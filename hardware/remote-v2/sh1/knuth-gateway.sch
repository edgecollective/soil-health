EESchema Schematic File Version 4
EELAYER 30 0
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
L knuth-gateway-rescue:Conn_01x12_Female-Connector J1
U 1 1 5D3A6009
P 6400 3600
F 0 "J1" H 6200 4250 50  0000 L CNN
F 1 "FeatherLora1" V 5750 3250 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 6400 3600 50  0001 C CNN
F 3 "~" H 6400 3600 50  0001 C CNN
	1    6400 3600
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:Conn_01x16_Female-Connector J2
U 1 1 5D3A613C
P 7550 3800
F 0 "J2" H 7400 4650 50  0000 L CNN
F 1 "FeatherLora2" V 7700 3550 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 7550 3800 50  0001 C CNN
F 3 "~" H 7550 3800 50  0001 C CNN
	1    7550 3800
	1    0    0    -1  
$EndComp
Text GLabel 6200 3100 0    50   Input ~ 0
VBAT
Text GLabel 6200 3200 0    50   Input ~ 0
EN
Text GLabel 6200 3300 0    50   Input ~ 0
VBUS
Text GLabel 6200 3400 0    50   Input ~ 0
D13
Text GLabel 6200 3500 0    50   Input ~ 0
D12
Text GLabel 6200 3600 0    50   Input ~ 0
D11
Text GLabel 6200 3700 0    50   Input ~ 0
D10
Text GLabel 6200 3800 0    50   Input ~ 0
D9
Text GLabel 6200 3900 0    50   Input ~ 0
D6
Text GLabel 6200 4000 0    50   Input ~ 0
D5
Text GLabel 6200 4100 0    50   Input ~ 0
SCL
Text GLabel 6200 4200 0    50   Input ~ 0
SDA
Text GLabel 7350 3100 0    50   Input ~ 0
RESET
Wire Wire Line
	7350 3200 7000 3200
Wire Wire Line
	7000 3200 7000 3000
$Comp
L knuth-gateway-rescue:+3V3-power #PWR0101
U 1 1 5D3A928A
P 7000 3000
F 0 "#PWR0101" H 7000 2850 50  0001 C CNN
F 1 "+3V3" H 7015 3173 50  0000 C CNN
F 2 "" H 7000 3000 50  0001 C CNN
F 3 "" H 7000 3000 50  0001 C CNN
	1    7000 3000
	1    0    0    -1  
$EndComp
Text GLabel 7350 3300 0    50   Input ~ 0
AREF
Wire Wire Line
	7350 3400 7000 3400
Wire Wire Line
	7000 3400 7000 3450
$Comp
L knuth-gateway-rescue:GND-power #PWR0103
U 1 1 5D3AC17C
P 7000 3450
F 0 "#PWR0103" H 7000 3200 50  0001 C CNN
F 1 "GND" H 7005 3277 50  0000 C CNN
F 2 "" H 7000 3450 50  0001 C CNN
F 3 "" H 7000 3450 50  0001 C CNN
	1    7000 3450
	1    0    0    -1  
$EndComp
Text GLabel 7350 3500 0    50   Input ~ 0
A0
Text GLabel 7350 3600 0    50   Input ~ 0
A1
Text GLabel 7350 3700 0    50   Input ~ 0
A2
Text GLabel 7350 3800 0    50   Input ~ 0
A3
Text GLabel 7350 3900 0    50   Input ~ 0
A4
Text GLabel 7350 4000 0    50   Input ~ 0
A5
Text GLabel 7350 4100 0    50   Input ~ 0
SCK
Text GLabel 7350 4200 0    50   Input ~ 0
MOSI
Text GLabel 7350 4300 0    50   Input ~ 0
MISO
Text GLabel 7350 4400 0    50   Input ~ 0
D0
Text GLabel 7350 4500 0    50   Input ~ 0
D1
Text GLabel 7350 4600 0    50   Input ~ 0
DI01
$Comp
L knuth-gateway-rescue:R-Device R1
U 1 1 5E5EA6D5
P 3350 4600
F 0 "R1" H 3420 4646 50  0000 L CNN
F 1 "1K" H 3420 4555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3280 4600 50  0001 C CNN
F 3 "~" H 3350 4600 50  0001 C CNN
	1    3350 4600
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:R-Device R3
U 1 1 5E5EEEA0
P 3850 4600
F 0 "R3" H 3920 4646 50  0000 L CNN
F 1 "1K" H 3920 4555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3780 4600 50  0001 C CNN
F 3 "~" H 3850 4600 50  0001 C CNN
	1    3850 4600
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:R-Device R4
U 1 1 5E5EF1DA
P 4400 4600
F 0 "R4" H 4470 4646 50  0000 L CNN
F 1 "1K" H 4470 4555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 4330 4600 50  0001 C CNN
F 3 "~" H 4400 4600 50  0001 C CNN
	1    4400 4600
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:R-Device R5
U 1 1 5E5EF550
P 4900 4600
F 0 "R5" H 4970 4646 50  0000 L CNN
F 1 "1K" H 4970 4555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 4830 4600 50  0001 C CNN
F 3 "~" H 4900 4600 50  0001 C CNN
	1    4900 4600
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:R-Device R6
U 1 1 5E5EF8C7
P 5400 4600
F 0 "R6" H 5470 4646 50  0000 L CNN
F 1 "1K" H 5470 4555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5330 4600 50  0001 C CNN
F 3 "~" H 5400 4600 50  0001 C CNN
	1    5400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3900 6800 3900
Wire Wire Line
	6800 3900 6800 4600
Wire Wire Line
	6800 4600 7350 4600
$Comp
L Device:LED D2
U 1 1 5E600697
P 3350 4900
F 0 "D2" V 3389 4783 50  0000 R CNN
F 1 "LED" V 3298 4783 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 3350 4900 50  0001 C CNN
F 3 "~" H 3350 4900 50  0001 C CNN
	1    3350 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5E610FB7
P 3850 4900
F 0 "D3" V 3889 4783 50  0000 R CNN
F 1 "LED" V 3798 4783 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 3850 4900 50  0001 C CNN
F 3 "~" H 3850 4900 50  0001 C CNN
	1    3850 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5E6115AB
P 4400 4900
F 0 "D4" V 4439 4783 50  0000 R CNN
F 1 "LED" V 4348 4783 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4400 4900 50  0001 C CNN
F 3 "~" H 4400 4900 50  0001 C CNN
	1    4400 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5E6119AC
P 4900 4900
F 0 "D5" V 4939 4783 50  0000 R CNN
F 1 "LED" V 4848 4783 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4900 4900 50  0001 C CNN
F 3 "~" H 4900 4900 50  0001 C CNN
	1    4900 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5E611EED
P 5400 4900
F 0 "D6" V 5439 4783 50  0000 R CNN
F 1 "LED" V 5348 4783 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 5400 4900 50  0001 C CNN
F 3 "~" H 5400 4900 50  0001 C CNN
	1    5400 4900
	0    -1   -1   0   
$EndComp
$Comp
L knuth-gateway-rescue:R-Device RE1
U 1 1 5E626FB7
P 5050 2200
F 0 "RE1" H 5120 2246 50  0000 L CNN
F 1 "100K" H 5120 2155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 4980 2200 50  0001 C CNN
F 3 "~" H 5050 2200 50  0001 C CNN
	1    5050 2200
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:R-Device RE2
U 1 1 5E626FBD
P 5050 2500
F 0 "RE2" H 5120 2546 50  0000 L CNN
F 1 "100K" H 5120 2455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 4980 2500 50  0001 C CNN
F 3 "~" H 5050 2500 50  0001 C CNN
	1    5050 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2350 4900 2350
Connection ~ 5050 2350
Text GLabel 4900 2350 0    50   Input ~ 0
A0
$Comp
L knuth-gateway-rescue:GND-power #PWR0109
U 1 1 5E626FC6
P 5050 2650
F 0 "#PWR0109" H 5050 2400 50  0001 C CNN
F 1 "GND" H 5055 2477 50  0000 C CNN
F 2 "" H 5050 2650 50  0001 C CNN
F 3 "" H 5050 2650 50  0001 C CNN
	1    5050 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2050 5050 1900
Text GLabel 5050 1900 0    50   Input ~ 0
VBUS
Wire Wire Line
	6200 4000 5400 4000
Wire Wire Line
	5400 4000 5400 4450
Wire Wire Line
	6200 3900 4900 3900
Wire Wire Line
	4900 3900 4900 4450
Connection ~ 6200 3900
Wire Wire Line
	6200 3800 4400 3800
Wire Wire Line
	4400 3800 4400 4450
Wire Wire Line
	6200 3600 3850 3600
Wire Wire Line
	3850 3600 3850 4450
Wire Wire Line
	6200 3500 3350 3500
Wire Wire Line
	3350 3500 3350 4450
Wire Wire Line
	6200 3400 2750 3400
$Comp
L knuth-gateway-rescue:GND-power #PWR0110
U 1 1 5E6678FF
P 2000 4950
F 0 "#PWR0110" H 2000 4700 50  0001 C CNN
F 1 "GND" H 2005 4777 50  0000 C CNN
F 2 "" H 2000 4950 50  0001 C CNN
F 3 "" H 2000 4950 50  0001 C CNN
	1    2000 4950
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:R-Device R2
U 1 1 5E667905
P 2750 4600
F 0 "R2" H 2820 4646 50  0000 L CNN
F 1 "1K" H 2820 4555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2680 4600 50  0001 C CNN
F 3 "~" H 2750 4600 50  0001 C CNN
	1    2750 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5E66790B
P 2750 4900
F 0 "D1" V 2789 4783 50  0000 R CNN
F 1 "LED" V 2698 4783 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 2750 4900 50  0001 C CNN
F 3 "~" H 2750 4900 50  0001 C CNN
	1    2750 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 3400 2750 4450
Text GLabel 2750 2000 2    50   Input ~ 0
VBUS
Wire Wire Line
	2750 2000 2750 2500
Text GLabel 3000 2300 0    50   Input ~ 0
D10
$Comp
L knuth-gateway-rescue:Screw_Terminal_01x03-Connector J6
U 1 1 5D3E8A32
P 3850 2400
F 0 "J6" H 3770 2075 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 3770 2166 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-3.5-H_1x03_P3.50mm_Horizontal" H 3850 2400 50  0001 C CNN
F 3 "~" H 3850 2400 50  0001 C CNN
	1    3850 2400
	-1   0    0    1   
$EndComp
$Comp
L knuth-gateway-rescue:GND-power #PWR0105
U 1 1 5D3D5056
P 2450 2400
F 0 "#PWR0105" H 2450 2150 50  0001 C CNN
F 1 "GND" H 2455 2227 50  0000 C CNN
F 2 "" H 2450 2400 50  0001 C CNN
F 3 "" H 2450 2400 50  0001 C CNN
	1    2450 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1700 6350 1700
$Comp
L knuth-gateway-rescue:GND-power #PWR0111
U 1 1 5E6AF9FF
P 6800 2100
F 0 "#PWR0111" H 6800 1850 50  0001 C CNN
F 1 "GND" H 6805 1927 50  0000 C CNN
F 2 "" H 6800 2100 50  0001 C CNN
F 3 "" H 6800 2100 50  0001 C CNN
	1    6800 2100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW1
U 1 1 5E6B15DA
P 6150 1600
F 0 "SW1" H 6150 1885 50  0000 C CNN
F 1 "SW_SPDT" H 6150 1794 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 6150 1600 50  0001 C CNN
F 3 "~" H 6150 1600 50  0001 C CNN
	1    6150 1600
	1    0    0    -1  
$EndComp
Text GLabel 5950 1600 0    50   Input ~ 0
VBUS
Wire Wire Line
	3000 2300 4050 2300
Wire Wire Line
	2450 2400 4050 2400
Wire Wire Line
	2750 2500 4050 2500
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5E6C2926
P 4950 1350
F 0 "J3" H 5058 1531 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5058 1440 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4950 1350 50  0001 C CNN
F 3 "~" H 4950 1350 50  0001 C CNN
	1    4950 1350
	1    0    0    -1  
$EndComp
Text GLabel 5150 1350 2    50   Input ~ 0
VBUS
$Comp
L knuth-gateway-rescue:GND-power #PWR0112
U 1 1 5E6C316B
P 5150 1450
F 0 "#PWR0112" H 5150 1200 50  0001 C CNN
F 1 "GND" H 5155 1277 50  0000 C CNN
F 2 "" H 5150 1450 50  0001 C CNN
F 3 "" H 5150 1450 50  0001 C CNN
	1    5150 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT1
U 1 1 5E6AC2A2
P 6800 1900
F 0 "BT1" H 6908 1946 50  0000 L CNN
F 1 "Battery" H 6908 1855 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-3.5-H_1x02_P3.50mm_Horizontal" V 6800 1960 50  0001 C CNN
F 3 "~" V 6800 1960 50  0001 C CNN
	1    6800 1900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW2
U 1 1 5E5EFB24
P 8050 1650
F 0 "SW2" H 8050 1935 50  0000 C CNN
F 1 "SW_SPDT" H 8050 1844 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 8050 1650 50  0001 C CNN
F 3 "~" H 8050 1650 50  0001 C CNN
	1    8050 1650
	1    0    0    -1  
$EndComp
Text GLabel 7850 1650 0    50   Input ~ 0
A1
$Comp
L knuth-gateway-rescue:R-Device RE3
U 1 1 5E5FA61D
P 8250 1900
F 0 "RE3" H 8320 1946 50  0000 L CNN
F 1 "100K" H 8320 1855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8180 1900 50  0001 C CNN
F 3 "~" H 8250 1900 50  0001 C CNN
	1    8250 1900
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:GND-power #PWR0113
U 1 1 5E5FB986
P 8250 2050
F 0 "#PWR0113" H 8250 1800 50  0001 C CNN
F 1 "GND" H 8255 1877 50  0000 C CNN
F 2 "" H 8250 2050 50  0001 C CNN
F 3 "" H 8250 2050 50  0001 C CNN
	1    8250 2050
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:+3V3-power #PWR0114
U 1 1 5E5FDE6D
P 8250 1550
F 0 "#PWR0114" H 8250 1400 50  0001 C CNN
F 1 "+3V3" H 8265 1723 50  0000 C CNN
F 2 "" H 8250 1550 50  0001 C CNN
F 3 "" H 8250 1550 50  0001 C CNN
	1    8250 1550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW3
U 1 1 5E61DD21
P 2200 4950
F 0 "SW3" H 2200 5235 50  0000 C CNN
F 1 "SW_SPDT" H 2200 5144 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 2200 4950 50  0001 C CNN
F 3 "~" H 2200 4950 50  0001 C CNN
	1    2200 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5050 4900 5050
Wire Wire Line
	4400 5050 4900 5050
Connection ~ 4900 5050
Wire Wire Line
	4400 5050 3850 5050
Connection ~ 4400 5050
Wire Wire Line
	3850 5050 3350 5050
Connection ~ 3850 5050
Wire Wire Line
	3350 5050 2750 5050
Connection ~ 3350 5050
Wire Wire Line
	2750 5050 2400 5050
Connection ~ 2750 5050
$EndSCHEMATC
