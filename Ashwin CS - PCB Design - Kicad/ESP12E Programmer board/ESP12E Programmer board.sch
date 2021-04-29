EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ESP12E "
Date "2021-04-29"
Rev "1.0.1"
Comp "SCINTILLA "
Comment1 ""
Comment2 "Use 3.3v UsB to Serial Programmer"
Comment3 "ESP8266 Basic board"
Comment4 "By Ashwin CS"
$EndDescr
$Comp
L RF_Module:ESP-12E U2
U 1 1 608AAAEB
P 8000 4350
F 0 "U2" H 8150 5200 50  0000 C CNN
F 1 "ESP-12E" H 8250 5100 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 8000 4350 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 7650 4450 50  0001 C CNN
	1    8000 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 608ABDF7
P 7050 3750
F 0 "R1" V 7150 3850 50  0000 R CNN
F 1 "10k" V 7150 3750 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 6980 3750 50  0001 C CNN
F 3 "~" H 7050 3750 50  0001 C CNN
	1    7050 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 608AC824
P 8950 4850
F 0 "R3" H 9020 4896 50  0000 L CNN
F 1 "10k" H 9020 4805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 8880 4850 50  0001 C CNN
F 3 "~" H 8950 4850 50  0001 C CNN
	1    8950 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 608ACCFB
P 9700 3550
F 0 "R4" H 9770 3596 50  0000 L CNN
F 1 "10k" H 9770 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 9630 3550 50  0001 C CNN
F 3 "~" H 9700 3550 50  0001 C CNN
	1    9700 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 608AD118
P 10000 3550
F 0 "R5" H 10070 3596 50  0000 L CNN
F 1 "10k" H 10070 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 9930 3550 50  0001 C CNN
F 3 "~" H 10000 3550 50  0001 C CNN
	1    10000 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 608AD9A9
P 7050 3950
F 0 "R2" V 7150 4000 50  0000 C CNN
F 1 "10k" V 7150 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 6980 3950 50  0001 C CNN
F 3 "~" H 7050 3950 50  0001 C CNN
	1    7050 3950
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 608AFB04
P 9100 3350
F 0 "SW3" H 9100 3635 50  0000 C CNN
F 1 "SW_Push" H 9100 3544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 9100 3550 50  0001 C CNN
F 3 "~" H 9100 3550 50  0001 C CNN
	1    9100 3350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 608B3039
P 3250 2750
F 0 "SW1" H 3250 2985 50  0000 C CNN
F 1 "SW_SPST" H 3250 2894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 3250 2750 50  0001 C CNN
F 3 "~" H 3250 2750 50  0001 C CNN
	1    3250 2750
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:NCP1117-3.3_SOT223 U1
U 1 1 608B5631
P 2200 2750
F 0 "U1" H 2200 2992 50  0000 C CNN
F 1 "NCP1117-3.3_SOT223" H 2200 2901 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2200 2950 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/NCP1117-D.PDF" H 2300 2500 50  0001 C CNN
	1    2200 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 608B6828
P 1600 2900
F 0 "C1" H 1715 2946 50  0000 L CNN
F 1 "C" H 1715 2855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 1638 2750 50  0001 C CNN
F 3 "~" H 1600 2900 50  0001 C CNN
	1    1600 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 608B6E05
P 2800 2900
F 0 "C2" H 2915 2946 50  0000 L CNN
F 1 "C" H 2915 2855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 2838 2750 50  0001 C CNN
F 3 "~" H 2800 2900 50  0001 C CNN
	1    2800 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 608B76B4
P 8350 3200
F 0 "C3" H 8465 3246 50  0000 L CNN
F 1 "0.1uC" H 8465 3155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W4.4mm_P5.00mm" H 8388 3050 50  0001 C CNN
F 3 "~" H 8350 3200 50  0001 C CNN
	1    8350 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 608C56E1
P 2000 1550
F 0 "J1" H 2108 1731 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2069 1640 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x02_P1.00mm_Vertical" H 2000 1550 50  0001 C CNN
F 3 "~" H 2000 1550 50  0001 C CNN
	1    2000 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 608CD05E
P 2450 1400
F 0 "#PWR05" H 2450 1250 50  0001 C CNN
F 1 "+5V" H 2465 1573 50  0000 C CNN
F 2 "" H 2450 1400 50  0001 C CNN
F 3 "" H 2450 1400 50  0001 C CNN
	1    2450 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 608CDA02
P 2450 1700
F 0 "#PWR06" H 2450 1450 50  0001 C CNN
F 1 "GND" H 2455 1527 50  0000 C CNN
F 2 "" H 2450 1700 50  0001 C CNN
F 3 "" H 2450 1700 50  0001 C CNN
	1    2450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1650 2450 1650
Wire Wire Line
	2450 1650 2450 1700
Wire Wire Line
	2200 1550 2450 1550
Wire Wire Line
	2450 1550 2450 1400
Wire Wire Line
	1600 2750 1900 2750
Wire Wire Line
	2500 2750 2800 2750
$Comp
L power:GND #PWR04
U 1 1 608D5770
P 2200 3300
F 0 "#PWR04" H 2200 3050 50  0001 C CNN
F 1 "GND" H 2205 3127 50  0000 C CNN
F 2 "" H 2200 3300 50  0001 C CNN
F 3 "" H 2200 3300 50  0001 C CNN
	1    2200 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3050 2200 3150
Wire Wire Line
	1600 3050 1600 3150
Wire Wire Line
	1600 3150 2200 3150
Connection ~ 2200 3150
Wire Wire Line
	2200 3150 2200 3250
Wire Wire Line
	2800 3050 2800 3250
Wire Wire Line
	2800 3250 2200 3250
Connection ~ 2200 3250
Wire Wire Line
	2200 3250 2200 3300
$Comp
L power:+5V #PWR01
U 1 1 608D64E1
P 1100 2650
F 0 "#PWR01" H 1100 2500 50  0001 C CNN
F 1 "+5V" H 1115 2823 50  0000 C CNN
F 2 "" H 1100 2650 50  0001 C CNN
F 3 "" H 1100 2650 50  0001 C CNN
	1    1100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2650 1100 2750
Wire Wire Line
	1100 2750 1600 2750
Connection ~ 1600 2750
Wire Wire Line
	3050 2750 2800 2750
Connection ~ 2800 2750
$Comp
L power:+3.3V #PWR07
U 1 1 608D9C44
P 3750 2600
F 0 "#PWR07" H 3750 2450 50  0001 C CNN
F 1 "+3.3V" H 3765 2773 50  0000 C CNN
F 2 "" H 3750 2600 50  0001 C CNN
F 3 "" H 3750 2600 50  0001 C CNN
	1    3750 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2750 3750 2750
Wire Wire Line
	3750 2600 3750 2750
Text Notes 1550 950  0    89   ~ 0
Power Supply 5V to 3.3V
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 608F6641
P 2550 5900
F 0 "J2" H 2522 5782 50  0000 R CNN
F 1 "Conn_01x06_Male" H 2522 5873 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x06_P1.27mm_Vertical" H 2550 5900 50  0001 C CNN
F 3 "~" H 2550 5900 50  0001 C CNN
	1    2550 5900
	-1   0    0    1   
$EndComp
Text Notes 1450 5000 0    89   ~ 0
USB to serial connverter 
Text GLabel 2000 5700 0    50   Input ~ 0
RXD
Text GLabel 2000 5600 0    50   Input ~ 0
RTS
Text GLabel 2000 5800 0    50   Input ~ 0
TXD
Text GLabel 2000 6000 0    50   Input ~ 0
CTS
Wire Wire Line
	2000 5600 2350 5600
Wire Wire Line
	2000 5700 2350 5700
Wire Wire Line
	2000 5800 2350 5800
Wire Wire Line
	2000 6000 2350 6000
$Comp
L power:GND #PWR03
U 1 1 60902F99
P 2000 6150
F 0 "#PWR03" H 2000 5900 50  0001 C CNN
F 1 "GND" H 2005 5977 50  0000 C CNN
F 2 "" H 2000 6150 50  0001 C CNN
F 3 "" H 2000 6150 50  0001 C CNN
	1    2000 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6150 2000 6100
Wire Wire Line
	2000 6100 2350 6100
$Comp
L power:+3.3V #PWR02
U 1 1 6090519D
P 1650 5900
F 0 "#PWR02" H 1650 5750 50  0001 C CNN
F 1 "+3.3V" H 1665 6073 50  0000 C CNN
F 2 "" H 1650 5900 50  0001 C CNN
F 3 "" H 1650 5900 50  0001 C CNN
	1    1650 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5900 2350 5900
$Comp
L power:GND #PWR011
U 1 1 6093B30F
P 8000 5200
F 0 "#PWR011" H 8000 4950 50  0001 C CNN
F 1 "GND" H 8005 5027 50  0000 C CNN
F 2 "" H 8000 5200 50  0001 C CNN
F 3 "" H 8000 5200 50  0001 C CNN
	1    8000 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5200 8000 5050
$Comp
L power:+3.3V #PWR010
U 1 1 6093C8B2
P 8000 2900
F 0 "#PWR010" H 8000 2750 50  0001 C CNN
F 1 "+3.3V" H 8015 3073 50  0000 C CNN
F 2 "" H 8000 2900 50  0001 C CNN
F 3 "" H 8000 2900 50  0001 C CNN
	1    8000 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 6091747E
P 7650 3350
F 0 "#PWR09" H 7650 3100 50  0001 C CNN
F 1 "GND" H 7655 3177 50  0000 C CNN
F 2 "" H 7650 3350 50  0001 C CNN
F 3 "" H 7650 3350 50  0001 C CNN
	1    7650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3750 7250 3750
Wire Wire Line
	7200 3950 7400 3950
$Comp
L Switch:SW_Push SW2
U 1 1 608B09B1
P 7450 3350
F 0 "SW2" H 7450 3635 50  0000 C CNN
F 1 "SW_Push" H 7450 3544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 7450 3550 50  0001 C CNN
F 3 "~" H 7450 3550 50  0001 C CNN
	1    7450 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3350 7250 3750
Connection ~ 7250 3750
Wire Wire Line
	7250 3750 7400 3750
Wire Wire Line
	6900 3750 6750 3750
Wire Wire Line
	6750 3750 6750 3950
Wire Wire Line
	6750 3950 6900 3950
Wire Wire Line
	8000 2900 8000 3050
$Comp
L power:+3.3V #PWR08
U 1 1 609686B1
P 6750 3650
F 0 "#PWR08" H 6750 3500 50  0001 C CNN
F 1 "+3.3V" H 6765 3823 50  0000 C CNN
F 2 "" H 6750 3650 50  0001 C CNN
F 3 "" H 6750 3650 50  0001 C CNN
	1    6750 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3650 6750 3750
Connection ~ 6750 3750
Wire Wire Line
	8000 3050 8350 3050
Connection ~ 8000 3050
Wire Wire Line
	8000 3050 8000 3550
$Comp
L power:GND #PWR012
U 1 1 6096C81E
P 8350 3350
F 0 "#PWR012" H 8350 3100 50  0001 C CNN
F 1 "GND" H 8450 3250 50  0000 C CNN
F 2 "" H 8350 3350 50  0001 C CNN
F 3 "" H 8350 3350 50  0001 C CNN
	1    8350 3350
	1    0    0    -1  
$EndComp
Text GLabel 8850 3850 2    50   Input ~ 0
RXD
Wire Wire Line
	8600 3850 8850 3850
Text GLabel 8850 4050 2    50   Input ~ 0
TXD
Wire Wire Line
	8600 4050 8850 4050
$Comp
L power:GND #PWR013
U 1 1 60979B3C
P 8950 5200
F 0 "#PWR013" H 8950 4950 50  0001 C CNN
F 1 "GND" H 8950 5000 50  0000 C CNN
F 2 "" H 8950 5200 50  0001 C CNN
F 3 "" H 8950 5200 50  0001 C CNN
	1    8950 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4700 8950 4650
Wire Wire Line
	8950 4650 8600 4650
Wire Wire Line
	8950 5000 8950 5200
Wire Wire Line
	8600 3750 8900 3750
Wire Wire Line
	9700 3750 9700 3700
Wire Wire Line
	8600 3950 10000 3950
Wire Wire Line
	10000 3950 10000 3700
$Comp
L power:+3.3V #PWR015
U 1 1 60988468
P 9850 3000
F 0 "#PWR015" H 9850 2850 50  0001 C CNN
F 1 "+3.3V" H 9865 3173 50  0000 C CNN
F 2 "" H 9850 3000 50  0001 C CNN
F 3 "" H 9850 3000 50  0001 C CNN
	1    9850 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 6098A6EE
P 9300 3350
F 0 "#PWR014" H 9300 3100 50  0001 C CNN
F 1 "GND" H 9305 3177 50  0000 C CNN
F 2 "" H 9300 3350 50  0001 C CNN
F 3 "" H 9300 3350 50  0001 C CNN
	1    9300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3350 8900 3750
Connection ~ 8900 3750
Wire Wire Line
	8900 3750 9700 3750
Wire Wire Line
	9700 3400 9700 3250
Wire Wire Line
	9700 3250 9850 3250
Wire Wire Line
	10000 3250 10000 3400
Wire Wire Line
	9850 3250 9850 3000
Connection ~ 9850 3250
Wire Wire Line
	9850 3250 10000 3250
Text Notes 7350 1700 0    128  ~ 0
ESP12E Core
Wire Notes Line style solid rgb(0, 0, 0)
	500  4350 5350 4350
Wire Notes Line style solid rgb(0, 0, 0)
	5350 7800 500  7800
Wire Notes Line style solid rgb(0, 0, 0)
	5350 500  500  500 
Wire Notes Line style solid rgb(0, 0, 0)
	5350 500  5350 7800
Wire Notes Line style solid rgb(0, 0, 0)
	500  500  500  7800
$EndSCHEMATC
