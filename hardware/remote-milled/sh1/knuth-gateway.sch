EESchema Schematic File Version 4
LIBS:knuth-gateway-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L knuth:tpl5110 U4
U 1 1 5D196517
P 2350 4350
F 0 "U4" H 2106 4715 50  0000 C CNN
F 1 "tpl5111" H 2106 4624 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 2350 4350 50  0001 C CNN
F 3 "" H 2350 4350 50  0001 C CNN
	1    2350 4350
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:GND-power #PWR0102
U 1 1 5D196982
P 2900 4350
F 0 "#PWR0102" H 2900 4100 50  0001 C CNN
F 1 "GND" H 2905 4177 50  0000 C CNN
F 2 "" H 2900 4350 50  0001 C CNN
F 3 "" H 2900 4350 50  0001 C CNN
	1    2900 4350
	1    0    0    -1  
$EndComp
Connection ~ 2900 4350
$Comp
L knuth-gateway-rescue:Conn_01x02_Female-Connector R_Delay1
U 1 1 5D197A39
P 3950 4450
F 0 "R_Delay1" H 3977 4426 50  0000 L CNN
F 1 "Conn_01x02_Female" H 3977 4335 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 3950 4450 50  0001 C CNN
F 3 "~" H 3950 4450 50  0001 C CNN
	1    3950 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4450 2550 4450
Wire Wire Line
	2550 4450 2550 4650
Wire Wire Line
	2350 4550 2450 4550
Wire Wire Line
	2450 4550 2450 5150
Wire Wire Line
	3750 4650 3750 4550
$Comp
L knuth-gateway-rescue:Conn_01x12_Female-Connector J1
U 1 1 5D3A6009
P 6450 1800
F 0 "J1" H 6250 2450 50  0000 L CNN
F 1 "FeatherLora1" V 5800 1450 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 6450 1800 50  0001 C CNN
F 3 "~" H 6450 1800 50  0001 C CNN
	1    6450 1800
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:Conn_01x16_Female-Connector J2
U 1 1 5D3A613C
P 7600 2000
F 0 "J2" H 7450 2850 50  0000 L CNN
F 1 "FeatherLora2" V 7750 1750 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 7600 2000 50  0001 C CNN
F 3 "~" H 7600 2000 50  0001 C CNN
	1    7600 2000
	1    0    0    -1  
$EndComp
Text GLabel 6250 1300 0    50   Input ~ 0
VBAT
Text GLabel 6250 1400 0    50   Input ~ 0
EN
Text GLabel 6250 1600 0    50   Input ~ 0
D13
Text GLabel 6250 1700 0    50   Input ~ 0
D12
Text GLabel 6250 1800 0    50   Input ~ 0
D11
Text GLabel 6250 1900 0    50   Input ~ 0
D10
Text GLabel 6250 2000 0    50   Input ~ 0
D9
Text GLabel 6250 2100 0    50   Input ~ 0
D6
Text GLabel 6250 2200 0    50   Input ~ 0
D5
Text GLabel 6250 2300 0    50   Input ~ 0
SCL
Text GLabel 6250 2400 0    50   Input ~ 0
SDA
Text GLabel 7400 1300 0    50   Input ~ 0
RESET
Wire Wire Line
	7400 1400 7050 1400
Wire Wire Line
	7050 1400 7050 1200
$Comp
L knuth-gateway-rescue:+3V3-power #PWR0101
U 1 1 5D3A928A
P 7050 1200
F 0 "#PWR0101" H 7050 1050 50  0001 C CNN
F 1 "+3V3" H 7065 1373 50  0000 C CNN
F 2 "" H 7050 1200 50  0001 C CNN
F 3 "" H 7050 1200 50  0001 C CNN
	1    7050 1200
	1    0    0    -1  
$EndComp
Text GLabel 7400 1500 0    50   Input ~ 0
AREF
Wire Wire Line
	7400 1600 7050 1600
Wire Wire Line
	7050 1600 7050 1650
$Comp
L knuth-gateway-rescue:GND-power #PWR0103
U 1 1 5D3AC17C
P 7050 1650
F 0 "#PWR0103" H 7050 1400 50  0001 C CNN
F 1 "GND" H 7055 1477 50  0000 C CNN
F 2 "" H 7050 1650 50  0001 C CNN
F 3 "" H 7050 1650 50  0001 C CNN
	1    7050 1650
	1    0    0    -1  
$EndComp
Text GLabel 7400 1700 0    50   Input ~ 0
A0
Text GLabel 7400 1800 0    50   Input ~ 0
A1
Text GLabel 7400 1900 0    50   Input ~ 0
A2
Text GLabel 7400 2000 0    50   Input ~ 0
A3
Text GLabel 7400 2100 0    50   Input ~ 0
A4
Text GLabel 7400 2200 0    50   Input ~ 0
A5
Text GLabel 7400 2300 0    50   Input ~ 0
SCK
Text GLabel 7400 2400 0    50   Input ~ 0
MOSI
Text GLabel 7400 2500 0    50   Input ~ 0
MISO
Text GLabel 7400 2600 0    50   Input ~ 0
D0
Text GLabel 7400 2700 0    50   Input ~ 0
D1
Text GLabel 7400 2800 0    50   Input ~ 0
DI01
Wire Wire Line
	2350 4350 2900 4350
Wire Wire Line
	2550 4650 3750 4650
Text GLabel 2450 5150 2    50   Input ~ 0
DRV
Wire Wire Line
	2350 4650 2350 4900
Wire Wire Line
	2350 4900 2800 4900
Text GLabel 2800 4900 2    50   Input ~ 0
D10
$Comp
L Connector:Conn_01x03_Female switch1
U 1 1 5D40388A
P 4400 3100
F 0 "switch1" V 4650 3300 50  0000 R CNN
F 1 "Conn_01x03_Female" V 4500 3450 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 4400 3100 50  0001 C CNN
F 3 "~" H 4400 3100 50  0001 C CNN
	1    4400 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R RD1
U 1 1 5D3B9AD0
P 1400 2700
F 0 "RD1" H 1470 2746 50  0000 L CNN
F 1 "R" H 1470 2655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1330 2700 50  0001 C CNN
F 3 "~" H 1400 2700 50  0001 C CNN
	1    1400 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R RD2
U 1 1 5D3B9B54
P 1400 3000
F 0 "RD2" H 1470 3046 50  0000 L CNN
F 1 "R" H 1470 2955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1330 3000 50  0001 C CNN
F 3 "~" H 1400 3000 50  0001 C CNN
	1    1400 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2850 1250 2850
Connection ~ 1400 2850
Text GLabel 1250 2850 0    50   Input ~ 0
A5
$Comp
L knuth-gateway-rescue:GND-power #PWR0108
U 1 1 5D3BB55A
P 1400 3150
F 0 "#PWR0108" H 1400 2900 50  0001 C CNN
F 1 "GND" H 1405 2977 50  0000 C CNN
F 2 "" H 1400 3150 50  0001 C CNN
F 3 "" H 1400 3150 50  0001 C CNN
	1    1400 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 5D3E3A64
P 2500 1550
F 0 "J3" H 2527 1526 50  0000 L CNN
F 1 "Conn_01x02_Female" H 2527 1435 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 2500 1550 50  0001 C CNN
F 3 "~" H 2500 1550 50  0001 C CNN
	1    2500 1550
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:GND-power #PWR0110
U 1 1 5D3E3BA5
P 2150 2300
F 0 "#PWR0110" H 2150 2050 50  0001 C CNN
F 1 "GND" H 2155 2127 50  0000 C CNN
F 2 "" H 2150 2300 50  0001 C CNN
F 3 "" H 2150 2300 50  0001 C CNN
	1    2150 2300
	1    0    0    -1  
$EndComp
Text GLabel 1750 1550 0    50   Input ~ 0
BATT
Wire Wire Line
	3750 4350 3750 4450
Wire Wire Line
	2900 4350 3750 4350
Text GLabel 1400 2400 2    50   Input ~ 0
BATT
Wire Wire Line
	1400 2550 1400 2400
$Comp
L Connector:Screw_Terminal_01x02 J11
U 1 1 5D3F2E6B
P 2500 2150
F 0 "J11" H 2580 2142 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 2580 2051 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-3.5-H_1x02_P3.50mm_Horizontal" H 2500 2150 50  0001 C CNN
F 3 "~" H 2500 2150 50  0001 C CNN
	1    2500 2150
	1    0    0    1   
$EndComp
Text GLabel 4200 3000 0    50   Input ~ 0
BATT
Wire Wire Line
	1750 1550 1950 1550
Wire Wire Line
	1950 1550 1950 2050
Wire Wire Line
	1950 2050 2300 2050
Connection ~ 1950 1550
Wire Wire Line
	1950 1550 2300 1550
Wire Wire Line
	2300 1650 2150 1650
Wire Wire Line
	2150 1650 2150 2150
Wire Wire Line
	2300 2150 2150 2150
Connection ~ 2150 2150
Wire Wire Line
	2150 2150 2150 2300
Text GLabel 6800 3750 0    50   Input ~ 0
D12
Text GLabel 6800 4050 0    50   Input ~ 0
DI01
Wire Wire Line
	6800 3750 6800 4050
$Comp
L Connector:Screw_Terminal_01x03 J4
U 1 1 5D7AC79C
P 4150 6100
F 0 "J4" H 4070 5775 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 4070 5866 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-3.5-H_1x03_P3.50mm_Horizontal" H 4150 6100 50  0001 C CNN
F 3 "~" H 4150 6100 50  0001 C CNN
	1    4150 6100
	-1   0    0    1   
$EndComp
Text GLabel 4350 6100 2    50   Input ~ 0
D6
$Comp
L knuth-gateway-rescue:GND-power #PWR0104
U 1 1 5D7ACBF1
P 4350 6200
F 0 "#PWR0104" H 4350 5950 50  0001 C CNN
F 1 "GND" H 4355 6027 50  0000 C CNN
F 2 "" H 4350 6200 50  0001 C CNN
F 3 "" H 4350 6200 50  0001 C CNN
	1    4350 6200
	1    0    0    -1  
$EndComp
$Comp
L knuth:CUI_5V_SWITCHING U1
U 1 1 5D7ACF98
P 3350 3200
F 0 "U1" H 3181 3565 50  0000 C CNN
F 1 "CUI_5V_SWITCHING" H 3181 3474 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 3350 3200 50  0001 C CNN
F 3 "" H 3350 3200 50  0001 C CNN
	1    3350 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3100 3350 3100
Wire Wire Line
	3350 3200 3850 3200
$Comp
L knuth-gateway-rescue:GND-power #PWR0105
U 1 1 5D7B22BC
P 3850 3200
F 0 "#PWR0105" H 3850 2950 50  0001 C CNN
F 1 "GND" H 3855 3027 50  0000 C CNN
F 2 "" H 3850 3200 50  0001 C CNN
F 3 "" H 3850 3200 50  0001 C CNN
	1    3850 3200
	1    0    0    -1  
$EndComp
Text Notes 3850 5650 0    50   ~ 0
Acclima\nBlue (data) -- D6\nWhite (ground) -- GND\nRed (power) -- VBUS (5V) 
Text Notes 5850 3550 0    50   ~ 0
D12 connected to DI01 for LoRa protocool
Text Notes 4200 2700 0    50   ~ 0
Switch
$Comp
L power:+5V #PWR0106
U 1 1 5D7B5A9F
P 3600 3600
F 0 "#PWR0106" H 3600 3450 50  0001 C CNN
F 1 "+5V" H 3615 3773 50  0000 C CNN
F 2 "" H 3600 3600 50  0001 C CNN
F 3 "" H 3600 3600 50  0001 C CNN
	1    3600 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3300 3350 3600
Wire Wire Line
	3350 3600 3600 3600
$Comp
L power:+5V #PWR0107
U 1 1 5D7B5E9F
P 2350 4250
F 0 "#PWR0107" H 2350 4100 50  0001 C CNN
F 1 "+5V" H 2365 4423 50  0000 C CNN
F 2 "" H 2350 4250 50  0001 C CNN
F 3 "" H 2350 4250 50  0001 C CNN
	1    2350 4250
	1    0    0    -1  
$EndComp
Text GLabel 4350 6000 2    50   Input ~ 0
DRV
Text GLabel 6250 1500 0    50   Input ~ 0
DRV
$EndSCHEMATC
