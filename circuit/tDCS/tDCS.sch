EESchema Schematic File Version 4
LIBS:tDCS-cache
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
P 9000 2050
F 0 "R3" V 8793 2050 50  0000 C CNN
F 1 "680" V 8884 2050 50  0000 C CNN
F 2 "" V 8930 2050 50  0001 C CNN
F 3 "~" H 9000 2050 50  0001 C CNN
	1    9000 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5C5B3909
P 7850 2300
F 0 "R1" H 7780 2254 50  0000 R CNN
F 1 "3.3k" H 7780 2345 50  0000 R CNN
F 2 "" V 7780 2300 50  0001 C CNN
F 3 "~" H 7850 2300 50  0001 C CNN
	1    7850 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 2450 7850 2650
Wire Wire Line
	7850 2650 7950 2650
Wire Wire Line
	8850 2050 7850 2050
Wire Wire Line
	7850 2050 7850 2150
$Comp
L pspice:DIODE D1
U 1 1 5C5B3EDF
P 7850 2950
F 0 "D1" V 7804 3078 50  0000 L CNN
F 1 "DIODE" V 7895 3078 50  0000 L CNN
F 2 "" H 7850 2950 50  0001 C CNN
F 3 "~" H 7850 2950 50  0001 C CNN
	1    7850 2950
	0    1    1    0   
$EndComp
Connection ~ 7850 2050
Text GLabel 6800 2050 0    50   Input ~ 0
boostout+
Text GLabel 6800 3450 0    50   Input ~ 0
boostout-
Wire Wire Line
	6800 2050 7850 2050
Wire Wire Line
	6800 3450 7500 3450
$Comp
L Device:Battery_Cell BT1
U 1 1 5C6C4EAE
P 1500 3150
F 0 "BT1" H 1618 3246 50  0000 L CNN
F 1 "Battery_Cell" H 1618 3155 50  0000 L CNN
F 2 "" V 1500 3210 50  0001 C CNN
F 3 "~" V 1500 3210 50  0001 C CNN
	1    1500 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT2
U 1 1 5C6C4F1E
P 1500 3550
F 0 "BT2" H 1618 3646 50  0000 L CNN
F 1 "Battery_Cell" H 1618 3555 50  0000 L CNN
F 2 "" V 1500 3610 50  0001 C CNN
F 3 "~" V 1500 3610 50  0001 C CNN
	1    1500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3250 1500 3350
$Comp
L pspice:C C1
U 1 1 5C6C5446
P 2250 3300
F 0 "C1" H 2428 3346 50  0000 L CNN
F 1 "47uF" H 2428 3255 50  0000 L CNN
F 2 "" H 2250 3300 50  0001 C CNN
F 3 "~" H 2250 3300 50  0001 C CNN
	1    2250 3300
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C2
U 1 1 5C6C54C4
P 2800 3300
F 0 "C2" H 2978 3346 50  0000 L CNN
F 1 "105pF" H 2978 3255 50  0000 L CNN
F 2 "" H 2800 3300 50  0001 C CNN
F 3 "~" H 2800 3300 50  0001 C CNN
	1    2800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2950 2250 2950
Wire Wire Line
	2250 2950 2250 3050
Wire Wire Line
	2250 3050 2800 3050
Connection ~ 2250 3050
Wire Wire Line
	1500 3650 2250 3650
Wire Wire Line
	2250 3650 2250 3550
Wire Wire Line
	2250 3550 2800 3550
Connection ~ 2250 3550
$Comp
L tDCS-rescue:XL6009-tDCS-cache U1
U 1 1 5C6C69D2
P 3600 2400
F 0 "U1" V 3835 2478 50  0000 L CNN
F 1 "XL6009" V 3850 2050 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 3600 2400 50  0001 C CNN
F 3 "" H 3600 2400 50  0001 C CNN
	1    3600 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 3050 2850 3050
Wire Wire Line
	3250 3050 3250 3000
Connection ~ 2800 3050
$Comp
L Device:L L1
U 1 1 5C6C7543
P 3000 2050
F 0 "L1" V 3190 2050 50  0000 C CNN
F 1 "33uh" V 3099 2050 50  0000 C CNN
F 2 "" H 3000 2050 50  0001 C CNN
F 3 "~" H 3000 2050 50  0001 C CNN
	1    3000 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 2050 2850 3050
Connection ~ 2850 3050
Wire Wire Line
	2850 3050 3250 3050
Wire Wire Line
	3150 2050 3950 2050
Wire Wire Line
	3950 2050 3950 3050
Wire Wire Line
	3950 3050 3350 3050
Wire Wire Line
	3350 3050 3350 3000
Wire Wire Line
	3550 3000 3550 3550
Wire Wire Line
	3550 3550 2800 3550
Connection ~ 2800 3550
$Comp
L Device:R R4
U 1 1 5C6C98E6
P 4400 2750
F 0 "R4" H 4470 2796 50  0000 L CNN
F 1 "31K" H 4470 2705 50  0000 L CNN
F 2 "" V 4330 2750 50  0001 C CNN
F 3 "~" H 4400 2750 50  0001 C CNN
	1    4400 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C6C992C
P 4400 3200
F 0 "R5" H 4470 3246 50  0000 L CNN
F 1 "1K" H 4470 3155 50  0000 L CNN
F 2 "" V 4330 3200 50  0001 C CNN
F 3 "~" H 4400 3200 50  0001 C CNN
	1    4400 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2900 4400 3000
Wire Wire Line
	3150 3000 3150 3150
Wire Wire Line
	3150 3150 4100 3150
Wire Wire Line
	4100 3150 4100 3000
Wire Wire Line
	4100 3000 4400 3000
Connection ~ 4400 3000
Wire Wire Line
	4400 3000 4400 3050
$Comp
L pspice:C C3
U 1 1 5C6CB340
P 4900 3250
F 0 "C3" H 5078 3296 50  0000 L CNN
F 1 "105pF" H 5078 3205 50  0000 L CNN
F 2 "" H 4900 3250 50  0001 C CNN
F 3 "~" H 4900 3250 50  0001 C CNN
	1    4900 3250
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C4
U 1 1 5C6CB3D7
P 5500 3250
F 0 "C4" H 5678 3296 50  0000 L CNN
F 1 "220uF" H 5678 3205 50  0000 L CNN
F 2 "" H 5500 3250 50  0001 C CNN
F 3 "~" H 5500 3250 50  0001 C CNN
	1    5500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3550 3950 3550
Wire Wire Line
	4400 3550 4400 3350
Connection ~ 3550 3550
Wire Wire Line
	4400 3550 4900 3550
Wire Wire Line
	4900 3550 4900 3500
Connection ~ 4400 3550
Wire Wire Line
	4900 3550 5500 3550
Wire Wire Line
	5500 3550 5500 3500
Connection ~ 4900 3550
Wire Wire Line
	4400 2600 4400 2050
Wire Wire Line
	4900 3000 4900 2050
Wire Wire Line
	4900 2050 4400 2050
Wire Wire Line
	5500 3000 5500 2050
Wire Wire Line
	5500 2050 4900 2050
Connection ~ 4900 2050
$Comp
L Diode:1N5821 D2
U 1 1 5C6CFE58
P 4200 2050
F 0 "D2" H 4200 1834 50  0000 C CNN
F 1 "1N5821" H 4200 1925 50  0000 C CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 4200 1875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 4200 2050 50  0001 C CNN
	1    4200 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3950 2050 4050 2050
Connection ~ 3950 2050
Wire Wire Line
	4350 2050 4400 2050
Connection ~ 4400 2050
Text GLabel 5500 2050 2    50   Input ~ 0
boostout+
Text GLabel 5500 3550 2    50   Input ~ 0
boostout-
$Comp
L power:GND #PWR01
U 1 1 5C6D200F
P 3950 3750
F 0 "#PWR01" H 3950 3500 50  0001 C CNN
F 1 "GND" H 3955 3577 50  0000 C CNN
F 2 "" H 3950 3750 50  0001 C CNN
F 3 "" H 3950 3750 50  0001 C CNN
	1    3950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3750 3950 3550
Connection ~ 3950 3550
Wire Wire Line
	3950 3550 4400 3550
$Comp
L Connector:AudioJack3 J?
U 1 1 5C70A3F0
P 9450 2250
F 0 "J?" H 9170 2183 50  0000 R CNN
F 1 "output to electrode" H 9170 2274 50  0000 R CNN
F 2 "" H 9450 2250 50  0001 C CNN
F 3 "~" H 9450 2250 50  0001 C CNN
	1    9450 2250
	-1   0    0    1   
$EndComp
NoConn ~ 10050 2350
$Comp
L Device:R R2
U 1 1 5C5B3B96
P 8300 3150
F 0 "R2" V 8507 3150 50  0000 C CNN
F 1 "1.351 kOhm" V 8416 3150 50  0000 C CNN
F 2 "" V 8230 3150 50  0001 C CNN
F 3 "~" H 8300 3150 50  0001 C CNN
	1    8300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3150 7500 3450
Wire Wire Line
	9150 2050 9250 2050
Wire Wire Line
	9250 2050 9250 2150
Wire Wire Line
	8250 2450 9250 2450
Wire Wire Line
	9250 2450 9250 2350
NoConn ~ 9250 2250
Connection ~ 7850 2650
Wire Wire Line
	7850 2650 7850 2750
Wire Wire Line
	7500 3150 7850 3150
Connection ~ 7500 3450
Wire Wire Line
	8250 2850 8250 3000
Wire Wire Line
	8250 3000 8300 3000
Wire Wire Line
	8300 3300 8300 3450
Wire Wire Line
	7500 3450 8300 3450
$EndSCHEMATC
