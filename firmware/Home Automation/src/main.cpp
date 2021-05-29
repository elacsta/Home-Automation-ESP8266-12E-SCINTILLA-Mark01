#include <ESP8266WiFi.h>
#include <ESP8266mDNS.h>
#include <ESPAsyncWebServer.h>
#include <WebSocketsServer.h>
#include <ArduinoJson.h>

#define Device1 14 // external device definition
#define Device2 12
#define Device3 13

// uint8_t interrupt_1 = D1; //external interrupt definition
// uint8_t interrupt_2 = D2;
// uint8_t interrupt_3 = D3;

volatile byte relay1 = 0; //interrupt response
volatile byte relay2 = 0;
volatile byte relay3 = 0;

volatile byte f1_status = 0; // final Device status
volatile byte f2_status = 0;
volatile byte f3_status = 0;

ICACHE_RAM_ATTR void ISR1(){ //interrupt service routine
  relay1 = !relay1;
  f1_status = f1_status ^ relay1;  
  digitalWrite(Device1, f1_status);
}

ICACHE_RAM_ATTR void ISR2(){
  relay2 = !relay2;
  f2_status = f2_status ^ relay2;
  digitalWrite(Device2, f2_status);
}

ICACHE_RAM_ATTR void ISR3(){
  relay3 = !relay3;
  f3_status = f3_status ^ relay3;
  digitalWrite(Device3, f3_status);
}

/*the webpage code will store in program memory (PROGMEM funtion used) insted of RAM,
it can be stored as string literel by using R"=====()=====";
*/
char webpage[] PROGMEM = R"=====( 

<!DOCTYPE html>
<html>

<script>

var connection = new WebSocket('ws://'+location.hostname+':81/');

var button_1_status = 0;
var button_2_status = 0;
var button_3_status = 0;

function button_1()
{
button_1_status =! button_1_status; 
console.log("LED 1 Switched");
send_data();
}


function button_2()
{
button_2_status =! button_2_status; 
console.log("LED 2 Switched");
send_data();
}

function button_3()
{
button_3_status =! button_3_status; 
console.log("LED 3 Switched");
send_data();
}


function send_data()
{
var full_data = '{"LED1" :'+button_1_status+',"LED2":'+button_2_status+',"LED3":'+button_3_status+'}';
connection.send(full_data);
}


</script>
<body>

<center>
<h1>Home Automation</h1>

<h3> Device 1 </h3>
<button onclick= "button_1()" >On/Off</button>
<h3> Device 2 </h3>
<button onclick="button_2()">On/Off</button>
<h3> Device 3 </h3>
<button onclick="button_3()">On/Off</button>
</center>
</body>
</html>
)=====";

AsyncWebServer server(80); // server port 80
WebSocketsServer websockets(81);

void notFound(AsyncWebServerRequest *request)
{
  request->send(404, "text/plain", "Page Not found");
}

void webSocketEvent(uint8_t num, WStype_t type, uint8_t *payload, size_t length)
{

  switch (type)
  {
  case WStype_DISCONNECTED:
    Serial.printf("[%u] Disconnected!\n", num);
    break;
  case WStype_CONNECTED:
  {
    IPAddress ip = websockets.remoteIP(num);
    Serial.printf("[%u] Connected from %d.%d.%d.%d url: %s\n", num, ip[0], ip[1], ip[2], ip[3], payload);

    // send message to client
    websockets.sendTXT(num, "Connected from server");
  }
  break;
  case WStype_TEXT:
    Serial.printf("[%u] get Text: %s\n", num, payload);
    String message = String((char *)(payload));
    Serial.println(message);

    DynamicJsonDocument doc(200); // defining an instance of json
    // deserialize the data
    DeserializationError error = deserializeJson(doc, message);
    // parse the parameters we expect to receive (TO-DO: error handling)
    // Test if parsing succeeds.
    if (error)
    {
      Serial.print("deserializeJson() failed: ");
      Serial.println(error.c_str());
      return;
    }

    int webSwitch1 = doc["LED1"];  
    int webSwitch2 = doc["LED2"];
    int webSwitch3 = doc["LED3"];

    // f1_status = relay1 ^ webSwitch1; //xor --> webswitch value and external switch 
    // f2_status = relay2 ^ webSwitch2;
    // f3_status = relay3 ^ webSwitch3;

    f1_status = f1_status ^ webSwitch1;  
    f2_status = f2_status ^ webSwitch2;
    f3_status = f3_status ^ webSwitch3;

    digitalWrite(Device1, f1_status);
    digitalWrite(Device2, f2_status);
    digitalWrite(Device3, f3_status);
  }
}

void setup()
{
  Serial.begin(115200); //serial monitor

  pinMode(Device1, OUTPUT);
  pinMode(Device2, OUTPUT);
  pinMode(Device3, OUTPUT);

  // pinMode(interrupt_1, INPUT);
  // pinMode(interrupt_2, INPUT);
  // pinMode(interrupt_3, INPUT);

  WiFi.mode(WIFI_AP);
  WiFi.softAP("ESP-AP", ""); //ssid , password
  Serial.println("softap");
  Serial.println("");
  Serial.println(WiFi.softAPIP());

  if (MDNS.begin("esp")){ //esp.local/
    Serial.println("MDNS responder started");
  }

  server.on("/", [](AsyncWebServerRequest *request)
            { request->send_P(200, "text/html", webpage); });

  server.onNotFound(notFound);

  server.begin(); // it will start webserver
  websockets.begin(); //websocket start
  websockets.onEvent(webSocketEvent);

  // attachInterrupt(digitalPinToInterrupt(interrupt_1), ISR1, CHANGE); //interrupt calling
  // attachInterrupt(digitalPinToInterrupt(interrupt_2), ISR2, CHANGE);
  // attachInterrupt(digitalPinToInterrupt(interrupt_3), ISR3, CHANGE);
}

void loop()
{
  websockets.loop();
}