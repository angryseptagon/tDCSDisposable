EESchema Schematic File Version 4
LIBS:_saved__saved_tDCS-cache
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
L Transistor_BJT:2N3904 Q1
U 1 1 5C5B3613
P 3250 2300
F 0 "Q1" H 3441 2346 50  0000 L CNN
F 1 "2N3904" H 3441 2255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 3450 2225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3250 2300 50  0001 L CNN
	1    3250 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5C5B385B
P 3550 1700
F 0 "R3" V 3343 1700 50  0000 C CNN
F 1 "680" V 3434 1700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3480 1700 50  0001 C CNN
F 3 "~" H 3550 1700 50  0001 C CNN
	1    3550 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5C5B3909
P 2950 1950
F 0 "R1" H 2880 1904 50  0000 R CNN
F 1 "20k" H 2880 1995 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2880 1950 50  0001 C CNN
F 3 "~" H 2950 1950 50  0001 C CNN
	1    2950 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 2100 2950 2300
Wire Wire Line
	2950 2300 3050 2300
Wire Wire Line
	2950 1700 2950 1800
$Comp
L pspice:DIODE D1
U 1 1 5C5B3EDF
P 2950 2600
F 0 "D1" V 2904 2728 50  0000 L CNN
F 1 "DIODE" V 2995 2728 50  0000 L CNN
F 2 "LED_THT:LED_D4.0mm" H 2950 2600 50  0001 C CNN
F 3 "~" H 2950 2600 50  0001 C CNN
	1    2950 2600
	0    1    1    0   
$EndComp
Text GLabel 2600 1800 0    50   Input ~ 0
boostout+
Text GLabel 1500 3200 0    50   Input ~ 0
boostout-
$Comp
L Device:Battery_Cell BT2
U 1 1 5C6C4F1E
P 850 6500
F 0 "BT2" H 968 6596 50  0000 L CNN
F 1 "Battery_Cell" H 968 6505 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 850 6560 50  0001 C CNN
F 3 "~" V 850 6560 50  0001 C CNN
	1    850  6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  6600 1600 6600
Wire Wire Line
	1600 6600 1600 6500
$Comp
L tDCS-rescue:XL6009-tDCS-cache U1
U 1 1 5C6C69D2
P 2950 5350
F 0 "U1" V 3185 5428 50  0000 L CNN
F 1 "XL6009" V 3200 5000 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 2950 5350 50  0001 C CNN
F 3 "" H 2950 5350 50  0001 C CNN
	1    2950 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 6000 2600 5950
$Comp
L Device:L L1
U 1 1 5C6C7543
P 2350 5000
F 0 "L1" V 2540 5000 50  0000 C CNN
F 1 "33uh" V 2449 5000 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns_SRN6045TA" H 2350 5000 50  0001 C CNN
F 3 "~" H 2350 5000 50  0001 C CNN
	1    2350 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 5000 2200 6000
Connection ~ 2200 6000
Wire Wire Line
	2200 6000 2600 6000
Wire Wire Line
	2500 5000 3300 5000
Wire Wire Line
	2900 5950 2900 6500
Wire Wire Line
	2500 6250 3450 6250
Wire Wire Line
	3450 5950 3750 5950
Wire Wire Line
	2900 6500 3300 6500
Connection ~ 2900 6500
Wire Wire Line
	3750 5550 3750 5500
$Comp
L Diode:1N5821 D2
U 1 1 5C6CFE58
P 3550 5000
F 0 "D2" H 3550 4784 50  0000 C CNN
F 1 "MBR560" H 3550 4875 50  0000 C CNN
F 2 "Diode_THT:D_DO-201AD_P12.70mm_Horizontal" H 3550 4825 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 3550 5000 50  0001 C CNN
	1    3550 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 5000 3400 5000
Connection ~ 3300 5000
Wire Wire Line
	3700 5000 3750 5000
Connection ~ 3750 5000
Text GLabel 5150 5350 2    50   Input ~ 0
boostout+
Text GLabel 4850 6500 2    50   Input ~ 0
boostout-
$Comp
L power:GND #PWR01
U 1 1 5C6D200F
P 3300 6700
F 0 "#PWR01" H 3300 6450 50  0001 C CNN
F 1 "GND" H 3305 6527 50  0000 C CNN
F 2 "" H 3300 6700 50  0001 C CNN
F 3 "" H 3300 6700 50  0001 C CNN
	1    3300 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6700 3300 6500
Connection ~ 3300 6500
Wire Wire Line
	3300 6500 3500 6500
Connection ~ 2950 2300
Wire Wire Line
	2950 2300 2950 2350
Wire Wire Line
	850  5900 850  6300
Wire Wire Line
	3750 5000 4500 5000
Wire Wire Line
	3750 5900 4000 5900
Wire Wire Line
	4000 5900 4000 5400
Connection ~ 3750 5900
Wire Wire Line
	3750 5900 3750 5950
Wire Wire Line
	4500 5400 4500 5000
Connection ~ 4500 5000
$Comp
L Transistor_FET:IRLZ44N Q3
U 1 1 5C90ECC0
P 5000 2400
F 0 "Q3" H 5206 2446 50  0000 L CNN
F 1 "IRL2203" H 5206 2355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5250 2325 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 5000 2400 50  0001 L CNN
	1    5000 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5C90FBC5
P 5100 2850
F 0 "R7" V 5307 2850 50  0000 C CNN
F 1 "100 Ohm" V 5216 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5030 2850 50  0001 C CNN
F 3 "~" H 5100 2850 50  0001 C CNN
	1    5100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3000 5100 3100
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5C911C11
P 5450 5900
F 0 "J2" H 5556 6078 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5550 6000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5450 5900 50  0001 C CNN
F 3 "~" H 5450 5900 50  0001 C CNN
	1    5450 5900
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRLZ44N Q2
U 1 1 5C911D12
P 2200 2550
F 0 "Q2" H 2406 2596 50  0000 L CNN
F 1 "IRL2203" H 2406 2505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2450 2475 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 2200 2550 50  0001 L CNN
	1    2200 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2800 2950 2800
Wire Wire Line
	2950 1700 3400 1700
Wire Wire Line
	3350 2100 4100 2100
Text GLabel 5650 5900 2    50   Input ~ 0
boostout-
Text GLabel 5650 6000 2    50   Input ~ 0
boostout+
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5C91D719
P 4400 1950
F 0 "J3" H 4506 2128 50  0000 C CNN
F 1 "Conn_01x02_Male" H 4500 2050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4400 1950 50  0001 C CNN
F 3 "~" H 4400 1950 50  0001 C CNN
	1    4400 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 1850 4200 1700
Wire Wire Line
	3700 1700 4200 1700
Connection ~ 4200 1700
Wire Wire Line
	4200 1700 5100 1700
Wire Wire Line
	4100 2100 4100 1950
Wire Wire Line
	4100 1950 4200 1950
Wire Wire Line
	2300 2350 2950 2350
Connection ~ 2950 2350
Wire Wire Line
	2950 2350 2950 2400
Wire Wire Line
	2300 2750 2300 3200
Connection ~ 2300 3200
Wire Wire Line
	2300 3200 2600 3200
Wire Wire Line
	4500 5000 5050 5000
Wire Wire Line
	5050 5300 5050 5350
Wire Wire Line
	5050 5350 5150 5350
Wire Wire Line
	5050 5350 4850 5350
Connection ~ 5050 5350
Wire Wire Line
	2600 1800 2800 1800
Wire Wire Line
	2800 1800 2800 1700
Wire Wire Line
	2800 1700 2950 1700
Connection ~ 2950 1700
Wire Wire Line
	1050 5900 1050 5850
$Comp
L Regulator_Linear:L7805 U2
U 1 1 5C918A18
P 1950 4050
F 0 "U2" H 1950 4292 50  0000 C CNN
F 1 "L7805" H 1950 4201 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1975 3900 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1950 4000 50  0001 C CNN
	1    1950 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR0101
U 1 1 5C918B07
P 2000 5950
F 0 "#PWR0101" H 2000 5800 50  0001 C CNN
F 1 "+9V" H 2015 6123 50  0000 C CNN
F 2 "" H 2000 5950 50  0001 C CNN
F 3 "" H 2000 5950 50  0001 C CNN
	1    2000 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5C9193D4
P 1950 4400
F 0 "#PWR0102" H 1950 4150 50  0001 C CNN
F 1 "GND" H 1955 4227 50  0000 C CNN
F 2 "" H 1950 4400 50  0001 C CNN
F 3 "" H 1950 4400 50  0001 C CNN
	1    1950 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4350 1950 4400
$Comp
L power:+9V #PWR0103
U 1 1 5C91B3A1
P 1000 4050
F 0 "#PWR0103" H 1000 3900 50  0001 C CNN
F 1 "+9V" V 1015 4178 50  0000 L CNN
F 2 "" H 1000 4050 50  0001 C CNN
F 3 "" H 1000 4050 50  0001 C CNN
	1    1000 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1550 4050 1650 4050
Wire Wire Line
	2500 5950 2500 6250
Wire Wire Line
	2700 6200 3300 6200
Wire Wire Line
	3300 5000 3300 6200
Wire Wire Line
	2700 5950 2700 6200
Wire Wire Line
	4650 2400 4700 2400
$Comp
L power:+5V #PWR0106
U 1 1 5C915432
P 1000 2350
F 0 "#PWR0106" H 1000 2200 50  0001 C CNN
F 1 "+5V" V 1015 2478 50  0000 L CNN
F 2 "" H 1000 2350 50  0001 C CNN
F 3 "" H 1000 2350 50  0001 C CNN
	1    1000 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5C91D855
P 4700 2750
F 0 "R8" V 4907 2750 50  0000 C CNN
F 1 "10 kOhm" V 4816 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4630 2750 50  0001 C CNN
F 3 "~" H 4700 2750 50  0001 C CNN
	1    4700 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2600 4700 2400
Connection ~ 4700 2400
Wire Wire Line
	4700 2400 4800 2400
Wire Wire Line
	4700 2900 4700 3100
Wire Wire Line
	4700 3100 5100 3100
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 5C929E98
P 5050 5150
F 0 "JP2" V 5004 5218 50  0000 L CNN
F 1 "SolderJumper_2_Open" V 5095 5218 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5050 5150 50  0001 C CNN
F 3 "~" H 5050 5150 50  0001 C CNN
	1    5050 5150
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5C931D61
P 1350 2650
F 0 "R6" H 1420 2696 50  0000 L CNN
F 1 "10k" H 1420 2605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1280 2650 50  0001 C CNN
F 3 "~" H 1350 2650 50  0001 C CNN
	1    1350 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 2650 2000 2550
$Comp
L Device:R R9
U 1 1 5C939BE1
P 5100 1950
F 0 "R9" V 4893 1950 50  0000 C CNN
F 1 "22k" V 4984 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5030 1950 50  0001 C CNN
F 3 "~" H 5100 1950 50  0001 C CNN
	1    5100 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 1700 5100 1800
Wire Wire Line
	5100 2100 5100 2200
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 5C9414E7
P 800 2450
F 0 "J1" H 906 2828 50  0000 C CNN
F 1 "Conn_01x05_Male" H 906 2737 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 800 2450 50  0001 C CNN
F 3 "~" H 800 2450 50  0001 C CNN
	1    800  2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5C945459
P 2000 2950
F 0 "R10" V 2207 2950 50  0000 C CNN
F 1 "10 kOhm" V 2116 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1930 2950 50  0001 C CNN
F 3 "~" H 2000 2950 50  0001 C CNN
	1    2000 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2650 1100 2650
Wire Wire Line
	1500 2650 1600 2650
$Comp
L power:GND #PWR0107
U 1 1 5C95C85E
P 1000 2450
F 0 "#PWR0107" H 1000 2200 50  0001 C CNN
F 1 "GND" H 1005 2277 50  0000 C CNN
F 2 "" H 1000 2450 50  0001 C CNN
F 3 "" H 1000 2450 50  0001 C CNN
	1    1000 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 3200 1600 3200
Wire Wire Line
	2000 3100 2000 3200
Connection ~ 2000 3200
Wire Wire Line
	2000 3200 2300 3200
Wire Wire Line
	2000 2800 2000 2650
Connection ~ 2000 2650
Connection ~ 4700 3100
$Comp
L Switch:SW_SPDT SW1
U 1 1 5C96FEDC
P 1600 5850
F 0 "SW1" H 1600 6135 50  0000 C CNN
F 1 "SW_SPDT" H 1600 6044 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x03_P2.00mm_Vertical" H 1600 5850 50  0001 C CNN
F 3 "" H 1600 5850 50  0001 C CNN
	1    1600 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5950 1800 6000
NoConn ~ 1800 5750
$Comp
L Device:CP C1
U 1 1 5C92C4FF
P 1800 6350
F 0 "C1" H 1918 6396 50  0000 L CNN
F 1 "47uF" H 1918 6305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1838 6200 50  0001 C CNN
F 3 "~" H 1800 6350 50  0001 C CNN
	1    1800 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 6000 2000 6000
Wire Wire Line
	1600 6500 1800 6500
$Comp
L Device:CP C2
U 1 1 5C92C63F
P 2100 6150
F 0 "C2" H 2218 6196 50  0000 L CNN
F 1 "220uF" H 2218 6105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 2138 6000 50  0001 C CNN
F 3 "~" H 2100 6150 50  0001 C CNN
	1    2100 6150
	1    0    0    -1  
$EndComp
Connection ~ 1800 6500
Wire Wire Line
	1800 6500 2150 6500
Connection ~ 2100 6000
Wire Wire Line
	1800 6200 1800 6000
Wire Wire Line
	2100 6000 2200 6000
Connection ~ 1800 6000
Wire Wire Line
	2100 6300 2150 6300
Wire Wire Line
	2150 6300 2150 6500
Connection ~ 2150 6500
Wire Wire Line
	2150 6500 2900 6500
$Comp
L Device:CP C4
U 1 1 5C93204A
P 4850 6200
F 0 "C4" H 4968 6246 50  0000 L CNN
F 1 "220uF" H 4968 6155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 4888 6050 50  0001 C CNN
F 3 "~" H 4850 6200 50  0001 C CNN
	1    4850 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5350 4850 6050
Wire Wire Line
	4850 6350 4850 6500
$Comp
L Device:CP C5
U 1 1 5C938594
P 1600 2900
F 0 "C5" H 1718 2946 50  0000 L CNN
F 1 "100uF" H 1718 2855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 1638 2750 50  0001 C CNN
F 3 "~" H 1600 2900 50  0001 C CNN
	1    1600 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3200 1600 3050
Connection ~ 1600 3200
Wire Wire Line
	1600 3200 2000 3200
Wire Wire Line
	1600 2750 1600 2650
Connection ~ 1600 2650
Wire Wire Line
	1600 2650 2000 2650
$Comp
L Device:CP C3
U 1 1 5C93E70B
P 4250 5400
F 0 "C3" V 3995 5400 50  0000 C CNN
F 1 "10uF" V 4086 5400 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 4288 5250 50  0001 C CNN
F 3 "~" H 4250 5400 50  0001 C CNN
	1    4250 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 5400 4100 5400
Wire Wire Line
	4400 5400 4500 5400
Wire Wire Line
	2600 6000 2800 6000
Wire Wire Line
	2800 6000 2800 5950
Connection ~ 2600 6000
$Comp
L power:+5V #PWR0104
U 1 1 5C91D4B3
P 2250 4050
F 0 "#PWR0104" H 2250 3900 50  0001 C CNN
F 1 "+5V" V 2265 4178 50  0000 L CNN
F 2 "" H 2250 4050 50  0001 C CNN
F 3 "" H 2250 4050 50  0001 C CNN
	1    2250 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 5950 2000 6000
Wire Wire Line
	850  5900 1050 5900
Connection ~ 2000 6000
Wire Wire Line
	2000 6000 2100 6000
$Comp
L Device:R_POT RV1
U 1 1 5C929CC5
P 3800 2800
F 0 "RV1" H 3730 2754 50  0000 R CNN
F 1 "R_POT" H 3730 2845 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3386C_Horizontal" H 3800 2800 50  0001 C CNN
F 3 "~" H 3800 2800 50  0001 C CNN
	1    3800 2800
	-1   0    0    1   
$EndComp
Connection ~ 2600 3100
Wire Wire Line
	2600 2800 2600 3100
Wire Wire Line
	2600 3100 2600 3200
Wire Wire Line
	3350 2500 3350 2650
Wire Wire Line
	3400 3100 3800 3100
Wire Wire Line
	2600 3100 3400 3100
Connection ~ 3400 3100
Wire Wire Line
	3400 2950 3400 3100
Wire Wire Line
	3350 2650 3400 2650
$Comp
L Device:R R2
U 1 1 5C5B3B96
P 3400 2800
F 0 "R2" V 3607 2800 50  0000 C CNN
F 1 "1.351 kOhm" V 3516 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3330 2800 50  0001 C CNN
F 3 "~" H 3400 2800 50  0001 C CNN
	1    3400 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2650 3450 2650
Wire Wire Line
	3450 2650 3450 2550
Wire Wire Line
	3450 2550 3650 2550
Wire Wire Line
	3650 2550 3650 2800
Connection ~ 3400 2650
Wire Wire Line
	3800 2950 3800 3100
Connection ~ 3800 3100
Wire Wire Line
	3800 3100 4700 3100
Wire Wire Line
	1050 5850 1400 5850
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5C9D02B5
P 1400 4050
F 0 "JP1" V 1354 4118 50  0000 L CNN
F 1 "SolderJumper_2_Open" V 1445 4118 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 1400 4050 50  0001 C CNN
F 3 "~" H 1400 4050 50  0001 C CNN
	1    1400 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 4050 1250 4050
Text GLabel 4650 2400 0    50   Input ~ 0
safetytoggle
Text GLabel 1000 2550 2    50   Input ~ 0
safetytoggle
Wire Wire Line
	5100 2600 5100 2650
Text GLabel 5300 2650 2    50   Input ~ 0
signalout
Text GLabel 1050 2250 2    50   Input ~ 0
signalout
Wire Wire Line
	1000 2250 1050 2250
Wire Wire Line
	5300 2650 5100 2650
Connection ~ 5100 2650
Wire Wire Line
	5100 2650 5100 2700
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20PU U3
U 1 1 5C9ED655
P 7200 2250
F 0 "U3" H 6670 2296 50  0000 R CNN
F 1 "ATtiny85-20PU" H 6670 2205 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7200 2250 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 7200 2250 50  0001 C CNN
	1    7200 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5C9ED6C1
P 7150 2850
F 0 "#PWR0105" H 7150 2600 50  0001 C CNN
F 1 "GND" H 7155 2677 50  0000 C CNN
F 2 "" H 7150 2850 50  0001 C CNN
F 3 "" H 7150 2850 50  0001 C CNN
	1    7150 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2850 7200 2850
$Comp
L power:+5V #PWR0108
U 1 1 5C9F0E50
P 7200 1550
F 0 "#PWR0108" H 7200 1400 50  0001 C CNN
F 1 "+5V" V 7215 1678 50  0000 L CNN
F 2 "" H 7200 1550 50  0001 C CNN
F 3 "" H 7200 1550 50  0001 C CNN
	1    7200 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1550 7200 1650
$Comp
L Device:Crystal Y1
U 1 1 5C9F519C
P 8250 2300
F 0 "Y1" V 8204 2431 50  0000 L CNN
F 1 "Crystal" V 8295 2431 50  0000 L CNN
F 2 "" H 8250 2300 50  0001 C CNN
F 3 "~" H 8250 2300 50  0001 C CNN
	1    8250 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 2150 8150 2150
Wire Wire Line
	8100 2250 7800 2250
Wire Wire Line
	8250 2450 8150 2450
Wire Wire Line
	8150 2450 8150 2400
Wire Wire Line
	8150 2400 8100 2400
Wire Wire Line
	8100 2400 8100 2350
Wire Wire Line
	8100 2350 7800 2350
Wire Wire Line
	8100 2200 8150 2200
Wire Wire Line
	8150 2200 8150 2150
Wire Wire Line
	8100 2200 8100 2250
Text GLabel 8400 2150 2    50   Input ~ 0
signalout
Text GLabel 7950 2550 2    50   Input ~ 0
safetytoggle
Text GLabel 1100 2750 0    50   Input ~ 0
gate_control
Wire Wire Line
	1100 2650 1100 2750
Connection ~ 1100 2650
Wire Wire Line
	1100 2650 1200 2650
Text GLabel 7950 1950 2    50   Input ~ 0
gate_control
$Comp
L Device:Buzzer BZ1
U 1 1 5CA05462
P 7950 1750
F 0 "BZ1" H 8103 1779 50  0000 L CNN
F 1 "Buzzer" H 8103 1688 50  0000 L CNN
F 2 "" V 7925 1850 50  0001 C CNN
F 3 "~" V 7925 1850 50  0001 C CNN
	1    7950 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5CA06E56
P 3450 5650
F 0 "RV2" H 3380 5604 50  0000 R CNN
F 1 "R_POT" H 3380 5695 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3386C_Horizontal" H 3450 5650 50  0001 C CNN
F 3 "~" H 3450 5650 50  0001 C CNN
	1    3450 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5500 3750 5500
Connection ~ 3750 5500
Wire Wire Line
	3750 5500 3750 5000
Wire Wire Line
	3450 5950 3450 6250
Wire Wire Line
	3450 5800 3450 5850
Wire Wire Line
	3450 5850 3500 5850
Wire Wire Line
	3500 5850 3500 6500
Connection ~ 3500 6500
Wire Wire Line
	3600 5650 3600 5900
Wire Wire Line
	3600 5900 3750 5900
Wire Wire Line
	7800 1950 7850 1950
Wire Wire Line
	7850 1950 7850 1850
Wire Wire Line
	7800 2050 7900 2050
Wire Wire Line
	7800 2150 8100 2150
Wire Wire Line
	8100 2150 8100 2100
Wire Wire Line
	8100 2100 8300 2100
Wire Wire Line
	8300 2100 8300 2150
Wire Wire Line
	8300 2150 8400 2150
Wire Wire Line
	7900 2050 7900 1950
Wire Wire Line
	7900 1950 7950 1950
Wire Wire Line
	3500 6500 4850 6500
$EndSCHEMATC