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
L Device:R R1
U 1 1 5C5B3909
P 2950 1950
F 0 "R1" H 2880 1904 50  0000 R CNN
F 1 "20k" H 2880 1995 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2880 1950 50  0001 C CNN
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
F 2 "Crystal:Crystal_SMD_TXC_7M-4Pin_3.2x2.5mm" H 2950 2600 50  0001 C CNN
F 3 "~" H 2950 2600 50  0001 C CNN
	1    2950 2600
	0    1    1    0   
$EndComp
Text GLabel 2600 1800 0    50   Input ~ 0
boostout+
$Comp
L Device:Battery_Cell BT2
U 1 1 5C6C4F1E
P 850 6500
F 0 "BT2" H 968 6596 50  0000 L CNN
F 1 "Battery_Cell" H 968 6505 50  0000 L CNN
F 2 "Battery:BatteryHolder_Eagle_12BH611-GR" V 850 6560 50  0001 C CNN
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
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5C911C11
P 2650 4400
F 0 "J2" H 2756 4578 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2750 4500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2650 4400 50  0001 C CNN
F 3 "~" H 2650 4400 50  0001 C CNN
	1    2650 4400
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
Text GLabel 2850 4500 2    50   Input ~ 0
boostout+
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5C91D719
P 5200 1950
F 0 "J3" H 5306 2128 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5300 2050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5200 1950 50  0001 C CNN
F 3 "~" H 5200 1950 50  0001 C CNN
	1    5200 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 2350 2750 2350
Connection ~ 2950 2350
Wire Wire Line
	2950 2350 2950 2400
Wire Wire Line
	2300 2750 2300 3200
Connection ~ 2300 3200
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
	3300 5000 3300 5300
Wire Wire Line
	2700 5950 2700 6200
$Comp
L Device:R R6
U 1 1 5C931D61
P 1350 2650
F 0 "R6" H 1420 2696 50  0000 L CNN
F 1 "10k" H 1420 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1280 2650 50  0001 C CNN
F 3 "~" H 1350 2650 50  0001 C CNN
	1    1350 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 2650 2000 2550
$Comp
L Device:R R10
U 1 1 5C945459
P 2000 2950
F 0 "R10" V 2207 2950 50  0000 C CNN
F 1 "10 kOhm" V 2116 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1930 2950 50  0001 C CNN
F 3 "~" H 2000 2950 50  0001 C CNN
	1    2000 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2650 1600 2650
Wire Wire Line
	1500 3200 1600 3200
Wire Wire Line
	2000 3100 2000 3200
Wire Wire Line
	2000 3200 2300 3200
Wire Wire Line
	2000 2800 2000 2750
Connection ~ 2000 2650
$Comp
L Switch:SW_SPDT SW1
U 1 1 5C96FEDC
P 1600 5850
F 0 "SW1" H 1600 6135 50  0000 C CNN
F 1 "SW_SPDT" H 1600 6044 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 1600 5850 50  0001 C CNN
F 3 "" H 1600 5850 50  0001 C CNN
	1    1600 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5950 1800 6000
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
F 1 "2k pot" H 3730 2845 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3386C_Horizontal" H 3800 2800 50  0001 C CNN
F 3 "~" H 3800 2800 50  0001 C CNN
	1    3800 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 2550 3650 2800
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
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20PU U3
U 1 1 5C9ED655
P 7700 5200
F 0 "U3" V 7150 5250 50  0000 R CNN
F 1 "ATtiny85-20PU" V 7050 5350 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7700 5200 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 7700 5200 50  0001 C CNN
	1    7700 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5C9ED6C1
P 7650 5800
F 0 "#PWR0105" H 7650 5550 50  0001 C CNN
F 1 "GND" H 7655 5627 50  0000 C CNN
F 2 "" H 7650 5800 50  0001 C CNN
F 3 "" H 7650 5800 50  0001 C CNN
	1    7650 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5800 7700 5800
$Comp
L power:+5V #PWR0108
U 1 1 5C9F0E50
P 7700 4500
F 0 "#PWR0108" H 7700 4350 50  0001 C CNN
F 1 "+5V" V 7715 4628 50  0000 L CNN
F 2 "" H 7700 4500 50  0001 C CNN
F 3 "" H 7700 4500 50  0001 C CNN
	1    7700 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4500 7700 4550
$Comp
L Device:Crystal Y1
U 1 1 5C9F519C
P 8900 5700
F 0 "Y1" V 8854 5831 50  0000 L CNN
F 1 "Crystal" V 8945 5831 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 8900 5700 50  0001 C CNN
F 3 "~" H 8900 5700 50  0001 C CNN
	1    8900 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5200 8300 5200
Wire Wire Line
	8600 5300 8300 5300
Wire Wire Line
	1100 2650 1100 2750
Wire Wire Line
	1100 2650 1200 2650
$Comp
L Device:Buzzer BZ1
U 1 1 5CA05462
P 8250 4550
F 0 "BZ1" H 8403 4579 50  0000 L CNN
F 1 "Buzzer" H 8403 4488 50  0000 L CNN
F 2 "Buzzer_Beeper:MagneticBuzzer_ProSignal_ABT-410-RC" V 8225 4650 50  0001 C CNN
F 3 "~" V 8225 4650 50  0001 C CNN
	1    8250 4550
	-1   0    0    1   
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
Wire Wire Line
	3750 5500 3750 5300
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
	8300 4900 8350 4900
Wire Wire Line
	8300 5100 8600 5100
Wire Wire Line
	8600 5100 8600 5050
Wire Wire Line
	3500 6500 4850 6500
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5CA95A29
P 10250 5000
F 0 "A1" H 10250 3914 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 10250 3823 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 10400 4050 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 10250 4000 50  0001 C CNN
	1    10250 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5CA95F1F
P 10450 4000
F 0 "#PWR0106" H 10450 3850 50  0001 C CNN
F 1 "+5V" V 10465 4128 50  0000 L CNN
F 2 "" H 10450 4000 50  0001 C CNN
F 3 "" H 10450 4000 50  0001 C CNN
	1    10450 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR0107
U 1 1 5CA961F4
P 10150 3550
F 0 "#PWR0107" H 10150 3400 50  0001 C CNN
F 1 "+9V" V 10165 3678 50  0000 L CNN
F 2 "" H 10150 3550 50  0001 C CNN
F 3 "" H 10150 3550 50  0001 C CNN
	1    10150 3550
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 5CA96573
P 10150 3750
F 0 "JP2" V 10104 3818 50  0000 L CNN
F 1 "SolderJumper_2_Open" V 10195 3818 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 10150 3750 50  0001 C CNN
F 3 "~" H 10150 3750 50  0001 C CNN
	1    10150 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10150 3550 10150 3600
Wire Wire Line
	10150 3900 10150 4000
$Comp
L power:GND #PWR0109
U 1 1 5CAA5CBB
P 1500 3200
F 0 "#PWR0109" H 1500 2950 50  0001 C CNN
F 1 "GND" H 1505 3027 50  0000 C CNN
F 2 "" H 1500 3200 50  0001 C CNN
F 3 "" H 1500 3200 50  0001 C CNN
	1    1500 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5CAA5D32
P 9750 6000
F 0 "#PWR0110" H 9750 5750 50  0001 C CNN
F 1 "GND" H 9755 5827 50  0000 C CNN
F 2 "" H 9750 6000 50  0001 C CNN
F 3 "" H 9750 6000 50  0001 C CNN
	1    9750 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 6000 10250 6000
Wire Wire Line
	10350 6000 10250 6000
Connection ~ 10250 6000
Text Label 10800 5300 0    50   ~ 0
A3
Text Label 3700 2550 0    50   ~ 0
A3
Wire Wire Line
	3650 2550 3700 2550
Connection ~ 3650 2550
Wire Wire Line
	10750 5300 10800 5300
Text Label 10850 5700 0    50   ~ 0
A7
Text Label 10850 5600 0    50   ~ 0
A6
Wire Wire Line
	10850 5600 10750 5600
Wire Wire Line
	10750 5700 10850 5700
NoConn ~ 9750 4400
NoConn ~ 9750 4500
NoConn ~ 9750 4600
NoConn ~ 9750 4700
NoConn ~ 9750 4800
NoConn ~ 9750 4900
NoConn ~ 9750 5000
NoConn ~ 9750 5100
NoConn ~ 9750 5200
NoConn ~ 9750 5400
NoConn ~ 9750 5500
NoConn ~ 9750 5600
NoConn ~ 10750 4800
NoConn ~ 10750 5000
NoConn ~ 10750 5100
NoConn ~ 10750 5200
NoConn ~ 10750 5400
NoConn ~ 10750 5500
Text GLabel 1100 2750 0    50   Input ~ 0
gate_control
Wire Wire Line
	5000 1700 5000 1850
$Comp
L Device:R R4
U 1 1 5CB7BCB2
P 4400 2350
F 0 "R4" H 4470 2396 50  0000 L CNN
F 1 "800K" H 4470 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4330 2350 50  0001 C CNN
F 3 "~" H 4400 2350 50  0001 C CNN
	1    4400 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5CB7BD26
P 4400 2800
F 0 "R5" H 4470 2846 50  0000 L CNN
F 1 "80K" H 4470 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4330 2800 50  0001 C CNN
F 3 "~" H 4400 2800 50  0001 C CNN
	1    4400 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5CB7BD86
P 4700 2350
F 0 "R7" H 4770 2396 50  0000 L CNN
F 1 "800K" H 4770 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4630 2350 50  0001 C CNN
F 3 "~" H 4700 2350 50  0001 C CNN
	1    4700 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5CB7BDE0
P 4700 2800
F 0 "R8" H 4770 2846 50  0000 L CNN
F 1 "80K" H 4770 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4630 2800 50  0001 C CNN
F 3 "~" H 4700 2800 50  0001 C CNN
	1    4700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2200 4400 1700
Connection ~ 4400 1700
Wire Wire Line
	4400 1700 5000 1700
Wire Wire Line
	4700 2100 4700 2200
Wire Wire Line
	3350 2100 4700 2100
Wire Wire Line
	4700 2100 4700 1950
Wire Wire Line
	4700 1950 5000 1950
Connection ~ 4700 2100
Wire Wire Line
	4400 2500 4400 2600
Wire Wire Line
	4700 2500 4700 2600
Text Label 4750 2600 0    50   ~ 0
A6
Text Label 4450 2600 0    50   ~ 0
A7
Wire Wire Line
	4400 2600 4450 2600
Connection ~ 4400 2600
Wire Wire Line
	4400 2600 4400 2650
Wire Wire Line
	4750 2600 4700 2600
Connection ~ 4700 2600
Wire Wire Line
	4700 2600 4700 2650
$Comp
L power:GND #PWR0112
U 1 1 5CBC3919
P 8350 4450
F 0 "#PWR0112" H 8350 4200 50  0001 C CNN
F 1 "GND" H 8355 4277 50  0000 C CNN
F 2 "" H 8350 4450 50  0001 C CNN
F 3 "" H 8350 4450 50  0001 C CNN
	1    8350 4450
	0    -1   -1   0   
$EndComp
Text Label 8400 4650 0    50   ~ 0
buzzer
Wire Wire Line
	8350 4650 8400 4650
Text Label 8350 4900 0    50   ~ 0
buzzer
Text Label 9450 5700 0    50   ~ 0
buzzer
Wire Wire Line
	9450 5700 9750 5700
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 5CBDEC48
P 4850 5000
F 0 "JP3" V 4804 5068 50  0000 L CNN
F 1 "SolderJumper_2_Open" H 4895 5068 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4850 5000 50  0001 C CNN
F 3 "~" H 4850 5000 50  0001 C CNN
	1    4850 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5000 4500 5000
Connection ~ 4500 5000
Wire Wire Line
	5000 5000 5000 5350
Wire Wire Line
	4850 5350 5000 5350
Connection ~ 5000 5350
Wire Wire Line
	5000 5350 5150 5350
$Comp
L power:GND #PWR0111
U 1 1 5CBE8EE0
P 3350 4400
F 0 "#PWR0111" H 3350 4150 50  0001 C CNN
F 1 "GND" H 3355 4227 50  0000 C CNN
F 2 "" H 3350 4400 50  0001 C CNN
F 3 "" H 3350 4400 50  0001 C CNN
	1    3350 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 4400 3350 4400
$Comp
L Device:C_Small C6
U 1 1 5CBF4026
P 8750 5950
F 0 "C6" H 8842 5996 50  0000 L CNN
F 1 "22pf" H 8842 5905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8750 5950 50  0001 C CNN
F 3 "~" H 8750 5950 50  0001 C CNN
	1    8750 5950
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5CBF41A7
P 9050 5900
F 0 "C7" H 9142 5946 50  0000 L CNN
F 1 "22pf" H 9142 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9050 5900 50  0001 C CNN
F 3 "~" H 9050 5900 50  0001 C CNN
	1    9050 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5700 8750 5850
Wire Wire Line
	9050 5800 9050 5700
Connection ~ 9050 5700
Text Label 8600 5300 2    50   ~ 0
XTAL2
Text Label 8600 5200 2    50   ~ 0
XTAL1
Text Label 8550 5700 0    50   ~ 0
XTAL1
Text Label 9300 5700 2    50   ~ 0
XTAL2
Wire Wire Line
	9050 5700 9300 5700
Wire Wire Line
	8550 5700 8750 5700
Connection ~ 8750 5700
Wire Wire Line
	8750 6050 8900 6050
Wire Wire Line
	9050 6050 9050 6000
$Comp
L power:GND #PWR0114
U 1 1 5CC1D999
P 8900 6050
F 0 "#PWR0114" H 8900 5800 50  0001 C CNN
F 1 "GND" H 8905 5877 50  0000 C CNN
F 2 "" H 8900 6050 50  0001 C CNN
F 3 "" H 8900 6050 50  0001 C CNN
	1    8900 6050
	1    0    0    -1  
$EndComp
Connection ~ 8900 6050
Wire Wire Line
	8900 6050 9050 6050
NoConn ~ 8300 5400
NoConn ~ 10350 4000
NoConn ~ 5450 4550
Text GLabel 8800 5000 2    50   Input ~ 0
gate_control
Wire Wire Line
	8600 5050 8800 5050
Wire Wire Line
	8800 5050 8800 5000
Text GLabel 9700 5300 0    50   Input ~ 0
gate_control
Wire Wire Line
	9700 5300 9750 5300
NoConn ~ 3800 2650
NoConn ~ 7950 5700
Wire Wire Line
	3350 2500 3350 2550
Wire Wire Line
	3350 2550 3650 2550
Connection ~ 2000 3200
Connection ~ 3800 3200
Wire Wire Line
	3800 3200 4400 3200
Connection ~ 4400 3200
Wire Wire Line
	4400 3200 4700 3200
Wire Wire Line
	4400 2950 4400 3200
Wire Wire Line
	4700 2950 4700 3200
Wire Wire Line
	3800 2950 3800 3200
Wire Wire Line
	2300 3200 2700 3200
Wire Wire Line
	2950 2800 2950 3200
Connection ~ 2950 3200
Wire Wire Line
	2950 3200 3800 3200
Wire Wire Line
	2700 3050 2700 3200
Connection ~ 2700 3200
Wire Wire Line
	2700 3200 2950 3200
Wire Wire Line
	2400 2750 2400 2850
Connection ~ 2000 2750
Wire Wire Line
	2000 2750 2000 2650
Wire Wire Line
	2700 2650 2750 2650
Wire Wire Line
	2750 2650 2750 2350
Connection ~ 2750 2350
Wire Wire Line
	2750 2350 2950 2350
Wire Wire Line
	2000 2750 2400 2750
Text Label 8350 5000 0    50   ~ 0
A6
Wire Wire Line
	8300 5000 8350 5000
$Comp
L Transistor_FET:BSS138 Q3
U 1 1 5CB57731
P 2600 2850
F 0 "Q3" H 2805 2896 50  0000 L CNN
F 1 "BSS138" H 2805 2805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2800 2775 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 2600 2850 50  0001 L CNN
	1    2600 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5CB58C26
P 1800 5750
F 0 "#PWR0113" H 1800 5500 50  0001 C CNN
F 1 "GND" H 1805 5577 50  0000 C CNN
F 2 "" H 1800 5750 50  0001 C CNN
F 3 "" H 1800 5750 50  0001 C CNN
	1    1800 5750
	-1   0    0    1   
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5CB58F6D
P 550 6500
F 0 "BT1" V 668 6596 50  0000 L CNN
F 1 "Battery_Cell" V 750 6400 50  0000 L CNN
F 2 "Battery:BatteryHolder_Eagle_12BH611-GR" V 550 6560 50  0001 C CNN
F 3 "~" V 550 6560 50  0001 C CNN
	1    550  6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	550  6300 550  5900
Wire Wire Line
	550  5900 850  5900
Connection ~ 850  5900
Wire Wire Line
	850  6600 550  6600
Connection ~ 850  6600
Text Notes 550  3850 0    50   ~ 0
connect if using attiny only
Text Notes 8700 3600 0    50   ~ 0
connect if using 9v to arduino only
Wire Wire Line
	5000 1950 5000 2000
Connection ~ 5000 1950
$Comp
L Connector:AudioJack4 J1
U 1 1 5CB78D25
P 6500 1700
F 0 "J1" H 6170 1583 50  0000 R CNN
F 1 "AudioJack4" H 6170 1674 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_PJ320D_Horizontal" H 6500 1700 50  0001 C CNN
F 3 "~" H 6500 1700 50  0001 C CNN
	1    6500 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 1700 4400 1700
NoConn ~ 5800 1450
NoConn ~ 6300 1700
NoConn ~ 10750 4400
NoConn ~ 10750 4500
$Comp
L Device:C C8
U 1 1 5CB6953E
P 6850 4900
F 0 "C8" H 6965 4946 50  0000 L CNN
F 1 ".1uf" H 6965 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6888 4750 50  0001 C CNN
F 3 "~" H 6850 4900 50  0001 C CNN
	1    6850 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4750 6850 4550
Wire Wire Line
	6850 4550 7700 4550
Connection ~ 7700 4550
Wire Wire Line
	7700 4550 7700 4600
Wire Wire Line
	6850 5050 6850 5800
Wire Wire Line
	6850 5800 7650 5800
Connection ~ 7650 5800
$Comp
L Device:D_Schottky_Small D3
U 1 1 5CB7CDF2
P 3550 5300
F 0 "D3" H 3550 5095 50  0000 C CNN
F 1 "SS16" H 3550 5186 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" V 3550 5300 50  0001 C CNN
F 3 "~" V 3550 5300 50  0001 C CNN
	1    3550 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 5300 3300 5300
Connection ~ 3300 5300
Wire Wire Line
	3300 5300 3300 6200
Wire Wire Line
	3650 5300 3750 5300
Connection ~ 3750 5300
Wire Wire Line
	3750 5300 3750 5000
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 5CB97C2E
P 6000 1800
F 0 "JP5" H 5950 2000 50  0000 L CNN
F 1 "SolderJumper_2_Open" H 5850 1900 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6000 1800 50  0001 C CNN
F 3 "~" H 6000 1800 50  0001 C CNN
	1    6000 1800
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP4
U 1 1 5CB980F2
P 5850 1600
F 0 "JP4" H 6200 1750 50  0000 L CNN
F 1 "SolderJumper_2_Open" H 5700 1700 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5850 1600 50  0001 C CNN
F 3 "~" H 5850 1600 50  0001 C CNN
	1    5850 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 1700 5150 1700
Wire Wire Line
	5150 1700 5150 1600
Wire Wire Line
	5150 1600 5700 1600
Connection ~ 5000 1700
Wire Wire Line
	5000 2000 6200 2000
Wire Wire Line
	5150 1800 5150 1700
Wire Wire Line
	5150 1800 5850 1800
Connection ~ 5150 1700
Wire Wire Line
	6000 1600 6300 1600
Wire Wire Line
	6150 1800 6300 1800
Wire Wire Line
	6200 2000 6200 1500
Wire Wire Line
	6200 1500 6300 1500
$EndSCHEMATC
