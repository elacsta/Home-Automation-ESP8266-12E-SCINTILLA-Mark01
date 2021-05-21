#include <Arduino.h>
#include <ESP8266WiFi.h>

const char* ssid     = "SSID";    // SSID of the Wi-Fi network you want to connect to
const char* password = "PASSWORD";// Password of the Wi-Fi network

// Relay Pins
#define Relay_1 1
#define Relay_2 2
#define Relay_3 3

volatile byte state = LOW;
// Interupt Pins
#define Interupt_R1 1
#define Interupt_R2 2
#define Interupt_R3 3


void setup() {
  // put your setup code here, to run once:

  Serial.begin(115200);         // Start the Serial communication to send messages to the computer
  delay(10);
  Serial.println('\n');
  
  WiFi.begin(ssid, password);             // Connect to the network
  Serial.print("Connecting to ");
  Serial.print(ssid); Serial.println(" ...");

  int i = 0;
  while (WiFi.status() != WL_CONNECTED) { // Wait for the Wi-Fi to connect
    delay(1000);
    Serial.print(++i); Serial.print(' ');
  }

  Serial.println('\n');
  Serial.println("Connection established!");  
  Serial.print("IP address:\t");
  Serial.println(WiFi.localIP());         // Send the IP address of the ESP8266 to the computer
  
  pinMode(Relay_1, OUTPUT);
  pinMode(Relay_2, OUTPUT);
  pinMode(Relay_3, OUTPUT);
  pinMode(Interupt_R1, INPUT_PULLUP);
  pinMode(Interupt_R2, INPUT_PULLUP);
  pinMode(Interupt_R3, INPUT_PULLUP);

  // Interrupt Checking
  attachInterrupt(digitalPinToInterrupt(Interupt_R1), Switch_State, CHANGE);
  attachInterrupt(digitalPinToInterrupt(Interupt_R2), Switch_State, CHANGE);
  attachInterrupt(digitalPinToInterrupt(Interupt_R3), Switch_State, CHANGE);
}

void loop() {
  // put your main code here, to run repeatedly:
digitalWrite(Relay_1,state);
digitalWrite(Relay_2,state);
digitalWrite(Relay_3,state);

}

void Switch_State(){
  //Triggers when the switch changes its State
  state=!state
}