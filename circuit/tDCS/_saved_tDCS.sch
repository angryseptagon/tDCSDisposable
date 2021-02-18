EESchema Schematic File Version 4
LIBS:_saved_tDCS-cache
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
P 8150 2650
F 0 "Q1" H 8341 2696 50  0000 L CNN
F 1 "2N3904" H 8341 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8350 2575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 8150 2650 50  0001 L CNN
	1    8150 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5C5B385B
P 8450 2050
F 0 "R3" V 8243 2050 50  0000 C CNN
F 1 "680" V 8334 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8380 2050 50  0001 C CNN
F 3 "~" H 8450 2050 50  0001 C CNN
	1    8450 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5C5B3909
P 7850 2300
F 0 "R1" H 7780 2254 50  0000 R CNN
F 1 "20k" H 7780 2345 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7780 2300 50  0001 C CNN
F 3 "~" H 7850 2300 50  0001 C CNN
	1    7850 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 2450 7850 2650
Wire Wire Line
	7850 2650 7950 2650
Wire Wire Line
	7850 2050 7850 2150
$Comp
L pspice:DIODE D1
U 1 1 5C5B3EDF
P 7850 2950
F 0 "D1" V 7804 3078 50  0000 L CNN
F 1 "DIODE" V 7895 3078 50  0000 L CNN
F 2 "LED_THT:LED_D4.0mm" H 7850 2950 50  0001 C CNN
F 3 "~" H 7850 2950 50  0001 C CNN
	1    7850 2950
	0    1    1    0   
$EndComp
Text GLabel 7500 2150 0    50   Input ~ 0
boostout+
Text GLabel 6400 3550 0    50   Input ~ 0
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
$Comp
L pspice:C C2
U 1 1 5C6C54C4
P 2150 6250
F 0 "C2" H 2328 6296 50  0000 L CNN
F 1 "220uF" H 2328 6205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2150 6250 50  0001 C CNN
F 3 "~" H 2150 6250 50  0001 C CNN
	1    2150 6250
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
	2150 6000 2200 6000
Wire Wire Line
	2600 6000 2600 5950
Connection ~ 2150 6000
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
	2900 6500 2150 6500
Connection ~ 2150 6500
$Comp
L Device:R R4
U 1 1 5C6C98E6
P 3750 5700
F 0 "R4" H 3820 5746 50  0000 L CNN
F 1 "31K" H 3820 5655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3680 5700 50  0001 C CNN
F 3 "~" H 3750 5700 50  0001 C CNN
	1    3750 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C6C992C
P 3750 6150
F 0 "R5" H 3820 6196 50  0000 L CNN
F 1 "1K" H 3820 6105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3680 6150 50  0001 C CNN
F 3 "~" H 3750 6150 50  0001 C CNN
	1    3750 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5850 3750 5900
Wire Wire Line
	2500 6250 3450 6250
Wire Wire Line
	3450 5950 3750 5950
Connection ~ 3750 5950
Wire Wire Line
	3750 5950 3750 6000
$Comp
L pspice:C C4
U 1 1 5C6CB3D7
P 4850 6200
F 0 "C4" H 5028 6246 50  0000 L CNN
F 1 "220uF" H 5028 6155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4850 6200 50  0001 C CNN
F 3 "~" H 4850 6200 50  0001 C CNN
	1    4850 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6500 3300 6500
Wire Wire Line
	3750 6500 3750 6300
Connection ~ 2900 6500
Connection ~ 3750 6500
Wire Wire Line
	4850 6500 4850 6450
Wire Wire Line
	3750 5550 3750 5000
$Comp
L Diode:1N5821 D2
U 1 1 5C6CFE58
P 3550 5000
F 0 "D2" H 3550 4784 50  0000 C CNN
F 1 "1N5821" H 3550 4875 50  0000 C CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 3550 4825 50  0001 C CNN
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
	3300 6500 3750 6500
$Comp
L Device:R R2
U 1 1 5C5B3B96
P 8300 3150
F 0 "R2" V 8507 3150 50  0000 C CNN
F 1 "1.351 kOhm" V 8416 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8230 3150 50  0001 C CNN
F 3 "~" H 8300 3150 50  0001 C CNN
	1    8300 3150
	1    0    0    -1  
$EndComp
Connection ~ 7850 2650
Wire Wire Line
	7850 2650 7850 2700
Wire Wire Line
	8250 2850 8250 3000
Wire Wire Line
	8250 3000 8300 3000
Wire Wire Line
	8300 3300 8300 3450
Wire Wire Line
	850  5900 850  6300
Wire Wire Line
	7500 3450 7500 3550
Wire Wire Line
	3750 5000 4500 5000
Wire Wire Line
	3750 6500 4850 6500
$Comp
L pspice:C C1
U 1 1 5C90C2EF
P 4250 5400
F 0 "C1" H 4428 5446 50  0000 L CNN
F 1 "10uf" H 4428 5355 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D10.0mm_H12.5mm_P5.00mm" H 4250 5400 50  0001 C CNN
F 3 "~" H 4250 5400 50  0001 C CNN
	1    4250 5400
	0    1    1    0   
$EndComp
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
P 9900 2750
F 0 "Q3" H 10106 2796 50  0000 L CNN
F 1 "IRL2203" H 10106 2705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 10150 2675 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 9900 2750 50  0001 L CNN
	1    9900 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5C90FBC5
P 10000 3200
F 0 "R7" V 10207 3200 50  0000 C CNN
F 1 "1 Ohm" V 10116 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9930 3200 50  0001 C CNN
F 3 "~" H 10000 3200 50  0001 C CNN
	1    10000 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2950 10000 3000
Wire Wire Line
	10000 3350 10000 3450
Wire Wire Line
	7500 3450 8300 3450
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
P 7100 2900
F 0 "Q2" H 7306 2946 50  0000 L CNN
F 1 "IRL2203" H 7306 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7350 2825 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 7100 2900 50  0001 L CNN
	1    7100 2900
	1    0    0    -1  
$EndComp
Connection ~ 7500 3450
Wire Wire Line
	7500 3150 7500 3450
Wire Wire Line
	7500 3150 7850 3150
Wire Wire Line
	7850 2050 8300 2050
Wire Wire Line
	8250 2450 9000 2450
Text GLabel 5650 5900 2    50   Input ~ 0
boostout-
Text GLabel 5650 6000 2    50   Input ~ 0
boostout+
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5C91D719
P 9300 2300
F 0 "J3" H 9406 2478 50  0000 C CNN
F 1 "Conn_01x02_Male" H 9400 2400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9300 2300 50  0001 C CNN
F 3 "~" H 9300 2300 50  0001 C CNN
	1    9300 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 2200 9100 2050
Wire Wire Line
	8600 2050 9100 2050
Connection ~ 9100 2050
Wire Wire Line
	9100 2050 10000 2050
Wire Wire Line
	9000 2450 9000 2300
Wire Wire Line
	9000 2300 9100 2300
Wire Wire Line
	7200 2700 7850 2700
Connection ~ 7850 2700
Wire Wire Line
	7850 2700 7850 2750
Wire Wire Line
	7200 3100 7200 3550
Connection ~ 7200 3550
Wire Wire Line
	7200 3550 7500 3550
Wire Wire Line
	9550 2750 9550 1700
Wire Wire Line
	4500 5000 5050 5000
Wire Wire Line
	5050 5300 5050 5350
Wire Wire Line
	5050 5350 5150 5350
Wire Wire Line
	5050 5350 4850 5350
Wire Wire Line
	4850 5350 4850 5950
Connection ~ 5050 5350
Wire Wire Line
	7500 2150 7700 2150
Wire Wire Line
	7700 2150 7700 2050
Wire Wire Line
	7700 2050 7850 2050
Connection ~ 7850 2050
Wire Wire Line
	850  5900 950  5900
Wire Wire Line
	1050 5900 1050 5850
Wire Wire Line
	1600 5850 1600 6000
$Comp
L Regulator_Linear:L7805 U2
U 1 1 5C918A18
P 1350 4400
F 0 "U2" H 1350 4642 50  0000 C CNN
F 1 "L7805" H 1350 4551 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1375 4250 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1350 4350 50  0001 C CNN
	1    1350 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR0101
U 1 1 5C918B07
P 950 5900
F 0 "#PWR0101" H 950 5750 50  0001 C CNN
F 1 "+9V" H 965 6073 50  0000 C CNN
F 2 "" H 950 5900 50  0001 C CNN
F 3 "" H 950 5900 50  0001 C CNN
	1    950  5900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5C9193D4
P 1350 4750
F 0 "#PWR0102" H 1350 4500 50  0001 C CNN
F 1 "GND" H 1355 4577 50  0000 C CNN
F 2 "" H 1350 4750 50  0001 C CNN
F 3 "" H 1350 4750 50  0001 C CNN
	1    1350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4700 1350 4750
$Comp
L power:+9V #PWR0103
U 1 1 5C91B3A1
P 950 4400
F 0 "#PWR0103" H 950 4250 50  0001 C CNN
F 1 "+9V" V 965 4528 50  0000 L CNN
F 2 "" H 950 4400 50  0001 C CNN
F 3 "" H 950 4400 50  0001 C CNN
	1    950  4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	950  4400 1050 4400
Wire Wire Line
	1600 6500 1800 6500
$Comp
L power:+5V #PWR0104
U 1 1 5C91D4B3
P 1650 4400
F 0 "#PWR0104" H 1650 4250 50  0001 C CNN
F 1 "+5V" V 1665 4528 50  0000 L CNN
F 2 "" H 1650 4400 50  0001 C CNN
F 3 "" H 1650 4400 50  0001 C CNN
	1    1650 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 6000 1800 6000
$Comp
L power:+9V #PWR0105
U 1 1 5C91D919
P 2800 5950
F 0 "#PWR0105" H 2800 5800 50  0001 C CNN
F 1 "+9V" H 2815 6123 50  0000 C CNN
F 2 "" H 2800 5950 50  0001 C CNN
F 3 "" H 2800 5950 50  0001 C CNN
	1    2800 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 5950 2500 6250
Wire Wire Line
	3450 5950 3450 6250
Wire Wire Line
	2700 6200 3300 6200
Wire Wire Line
	3300 5000 3300 6200
Wire Wire Line
	2700 5950 2700 6200
$Comp
L pspice:C C3
U 1 1 5C9253DD
P 1800 6250
F 0 "C3" H 1500 6250 50  0000 L CNN
F 1 "47uF" H 1450 6150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 1800 6250 50  0001 C CNN
F 3 "~" H 1800 6250 50  0001 C CNN
	1    1800 6250
	1    0    0    -1  
$EndComp
Connection ~ 1800 6000
Connection ~ 1800 6500
Wire Wire Line
	1800 6000 2150 6000
Wire Wire Line
	1800 6500 2150 6500
Wire Wire Line
	9550 2750 9600 2750
$Comp
L power:+5V #PWR0106
U 1 1 5C915432
P 5900 2700
F 0 "#PWR0106" H 5900 2550 50  0001 C CNN
F 1 "+5V" V 5915 2828 50  0000 L CNN
F 2 "" H 5900 2700 50  0001 C CNN
F 3 "" H 5900 2700 50  0001 C CNN
	1    5900 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 1700 6650 2900
Wire Wire Line
	6650 1700 9550 1700
$Comp
L Device:R R8
U 1 1 5C91D855
P 9600 3100
F 0 "R8" V 9807 3100 50  0000 C CNN
F 1 "10 kOhm" V 9716 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9530 3100 50  0001 C CNN
F 3 "~" H 9600 3100 50  0001 C CNN
	1    9600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2950 9600 2750
Connection ~ 9600 2750
Wire Wire Line
	9600 2750 9700 2750
Wire Wire Line
	9600 3250 9600 3450
Wire Wire Line
	9600 3450 10000 3450
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5C9298AB
P 1200 5850
F 0 "JP1" H 1200 6055 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 1200 5964 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 1200 5850 50  0001 C CNN
F 3 "~" H 1200 5850 50  0001 C CNN
	1    1200 5850
	1    0    0    -1  
$EndComp
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
P 6250 3000
F 0 "R6" H 6320 3046 50  0000 L CNN
F 1 "10k" H 6320 2955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6180 3000 50  0001 C CNN
F 3 "~" H 6250 3000 50  0001 C CNN
	1    6250 3000
	0    1    1    0   
$EndComp
$Comp
L pspice:C C5
U 1 1 5C9320B2
P 6400 3250
F 0 "C5" H 6100 3250 50  0000 L CNN
F 1 "100uF" H 6050 3150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 6400 3250 50  0001 C CNN
F 3 "~" H 6400 3250 50  0001 C CNN
	1    6400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3000 6900 2900
Connection ~ 6400 3000
Wire Wire Line
	6400 3500 6400 3550
$Comp
L Device:R R9
U 1 1 5C939BE1
P 10000 2300
F 0 "R9" V 9793 2300 50  0000 C CNN
F 1 "20k" V 9884 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9930 2300 50  0001 C CNN
F 3 "~" H 10000 2300 50  0001 C CNN
	1    10000 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 2050 10000 2150
Wire Wire Line
	10000 2450 10000 2550
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 5C9414E7
P 5700 2800
F 0 "J1" H 5806 3178 50  0000 C CNN
F 1 "Conn_01x05_Male" H 5806 3087 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 5700 2800 50  0001 C CNN
F 3 "~" H 5700 2800 50  0001 C CNN
	1    5700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1550 10550 1550
Wire Wire Line
	10550 1550 10550 3000
Wire Wire Line
	10550 3000 10000 3000
Wire Wire Line
	6600 1550 6600 2600
Connection ~ 10000 3000
Wire Wire Line
	10000 3000 10000 3050
$Comp
L Device:R R10
U 1 1 5C945459
P 6900 3300
F 0 "R10" V 7107 3300 50  0000 C CNN
F 1 "10 kOhm" V 7016 3300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6830 3300 50  0001 C CNN
F 3 "~" H 6900 3300 50  0001 C CNN
	1    6900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3000 6100 3000
Wire Wire Line
	6400 3000 6900 3000
Wire Wire Line
	5900 2600 6600 2600
Wire Wire Line
	5900 2900 6650 2900
$Comp
L power:GND #PWR0107
U 1 1 5C95C85E
P 5900 2800
F 0 "#PWR0107" H 5900 2550 50  0001 C CNN
F 1 "GND" H 5905 2627 50  0000 C CNN
F 2 "" H 5900 2800 50  0001 C CNN
F 3 "" H 5900 2800 50  0001 C CNN
	1    5900 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 3550 6900 3550
Wire Wire Line
	6900 3450 6900 3550
Connection ~ 6900 3550
Wire Wire Line
	6900 3550 7200 3550
Wire Wire Line
	6900 3150 6900 3000
Connection ~ 6900 3000
Wire Wire Line
	8300 3450 9600 3450
Connection ~ 8300 3450
Connection ~ 9600 3450
Connection ~ 950  5900
Wire Wire Line
	950  5900 1050 5900
Wire Wire Line
	1350 5850 1600 5850
$EndSCHEMATC
