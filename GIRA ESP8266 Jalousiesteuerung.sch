EESchema Schematic File Version 4
LIBS:GIRA ESP8266 Jalousiesteuerung-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "GIRA ESP8266 Jalousiesteuerungs-Einsatz"
Date "2018-10-25"
Rev "1.0"
Comp "xatLabs"
Comment1 "Julian Metzler"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP-12F U1
U 1 1 5BA64143
P 5800 2750
F 0 "U1" H 5350 3500 50  0000 C CNN
F 1 "ESP-12F" H 6150 3500 50  0000 C CNN
F 2 "custom:ESP-12F_SMD" H 5800 2750 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 5450 2850 50  0001 C CNN
	1    5800 2750
	1    0    0    -1  
$EndComp
$Comp
L conn:CONN_02X03 P1
U 1 1 5BA646CB
P 2950 2350
F 0 "P1" H 2950 2025 50  0000 C CNN
F 1 "Interface" H 2950 2116 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_SMT_02x03" H 2950 1150 50  0001 C CNN
F 3 "" H 2950 1150 50  0000 C CNN
	1    2950 2350
	1    0    0    1   
$EndComp
NoConn ~ 2700 2250
NoConn ~ 2700 2450
$Comp
L power:GND #PWR03
U 1 1 5BA647DA
P 2500 2550
F 0 "#PWR03" H 2500 2300 50  0001 C CNN
F 1 "GND" H 2505 2377 50  0000 C CNN
F 2 "" H 2500 2550 50  0001 C CNN
F 3 "" H 2500 2550 50  0001 C CNN
	1    2500 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2550 2500 2350
Wire Wire Line
	2500 2350 2700 2350
$Comp
L power:+15V #PWR05
U 1 1 5BA6480B
P 3400 2050
F 0 "#PWR05" H 3400 1900 50  0001 C CNN
F 1 "+15V" H 3415 2223 50  0000 C CNN
F 2 "" H 3400 2050 50  0001 C CNN
F 3 "" H 3400 2050 50  0001 C CNN
	1    3400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2050 3400 2250
Wire Wire Line
	3400 2250 3200 2250
Wire Wire Line
	3200 2350 3400 2350
Wire Wire Line
	3200 2450 3400 2450
Text Label 3400 2350 0    50   ~ 0
UP
Text Label 3400 2450 0    50   ~ 0
DOWN
$Comp
L Transistor_BJT:BC817 Q2
U 1 1 5BA6498B
P 7650 2750
F 0 "Q2" H 7841 2796 50  0000 L CNN
F 1 "BC817" H 7841 2705 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7850 2675 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC817.pdf" H 7650 2750 50  0001 L CNN
	1    7650 2750
	1    0    0    -1  
$EndComp
$Comp
L device:R R3
U 1 1 5BA64A9E
P 6750 2750
F 0 "R3" V 6650 2750 50  0000 C CNN
F 1 "4.7k" V 6750 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6680 2750 50  0001 C CNN
F 3 "~" H 6750 2750 50  0001 C CNN
	1    6750 2750
	0    1    1    0   
$EndComp
$Comp
L device:R R4
U 1 1 5BA64B15
P 6750 2850
F 0 "R4" V 6850 2850 50  0000 C CNN
F 1 "4.7k" V 6750 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6680 2850 50  0001 C CNN
F 3 "~" H 6750 2850 50  0001 C CNN
	1    6750 2850
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC817 Q1
U 1 1 5BA64B33
P 7300 3350
F 0 "Q1" H 7491 3396 50  0000 L CNN
F 1 "BC817" H 7491 3305 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7500 3275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC817.pdf" H 7300 3350 50  0001 L CNN
	1    7300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2750 6600 2750
Wire Wire Line
	6400 2850 6600 2850
Wire Wire Line
	7000 3350 7100 3350
$Comp
L power:GND #PWR013
U 1 1 5BA64D3E
P 7750 3700
F 0 "#PWR013" H 7750 3450 50  0001 C CNN
F 1 "GND" H 7755 3527 50  0000 C CNN
F 2 "" H 7750 3700 50  0001 C CNN
F 3 "" H 7750 3700 50  0001 C CNN
	1    7750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3550 7400 3650
Wire Wire Line
	7400 3650 7750 3650
Wire Wire Line
	7750 3650 7750 3700
Wire Wire Line
	7750 2950 7750 3650
Connection ~ 7750 3650
Wire Wire Line
	7400 3150 7400 3050
Wire Wire Line
	7750 2550 7750 2450
Text Label 7750 2450 1    50   ~ 0
UP
Text Label 7400 3050 1    50   ~ 0
DOWN
$Comp
L custom:LM2674 U2
U 1 1 5BA65374
P 3000 5400
F 0 "U2" H 3000 5500 60  0000 C CNN
F 1 "LM2674M-3.3" H 3000 5400 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 4450 6375 60  0001 C CNN
F 3 "" H 4450 6375 60  0000 C CNN
	1    3000 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR01
U 1 1 5BA654B7
P 1700 4750
F 0 "#PWR01" H 1700 4600 50  0001 C CNN
F 1 "+15V" H 1715 4923 50  0000 C CNN
F 2 "" H 1700 4750 50  0001 C CNN
F 3 "" H 1700 4750 50  0001 C CNN
	1    1700 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4750 1700 5250
Wire Wire Line
	1700 5250 2350 5250
$Comp
L device:CP C1
U 1 1 5BA65653
P 1700 5550
F 0 "C1" H 1818 5596 50  0000 L CNN
F 1 "22u" H 1818 5505 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Reflow" H 1738 5400 50  0001 C CNN
F 3 "~" H 1700 5550 50  0001 C CNN
	1    1700 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5400 1700 5300
Connection ~ 1700 5250
$Comp
L power:GND #PWR02
U 1 1 5BA65C69
P 1700 6100
F 0 "#PWR02" H 1700 5850 50  0001 C CNN
F 1 "GND" H 1705 5927 50  0000 C CNN
F 2 "" H 1700 6100 50  0001 C CNN
F 3 "" H 1700 6100 50  0001 C CNN
	1    1700 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6100 1700 5750
$Comp
L device:CP C4
U 1 1 5BA65E50
P 4500 5850
F 0 "C4" H 4618 5896 50  0000 L CNN
F 1 "100u" H 4618 5805 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Reflow" H 4538 5700 50  0001 C CNN
F 3 "~" H 4500 5850 50  0001 C CNN
	1    4500 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5BA660AE
P 4500 6100
F 0 "#PWR08" H 4500 5850 50  0001 C CNN
F 1 "GND" H 4505 5927 50  0000 C CNN
F 2 "" H 4500 6100 50  0001 C CNN
F 3 "" H 4500 6100 50  0001 C CNN
	1    4500 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6100 4500 6050
NoConn ~ 2350 5550
$Comp
L power:GND #PWR04
U 1 1 5BA66890
P 3200 6100
F 0 "#PWR04" H 3200 5850 50  0001 C CNN
F 1 "GND" H 3205 5927 50  0000 C CNN
F 2 "" H 3200 6100 50  0001 C CNN
F 3 "" H 3200 6100 50  0001 C CNN
	1    3200 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5900 3200 6100
$Comp
L device:C_Small C2
U 1 1 5BA66B0E
P 3750 5400
F 0 "C2" H 3842 5446 50  0000 L CNN
F 1 "10n" H 3842 5355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3750 5400 50  0001 C CNN
F 3 "~" H 3750 5400 50  0001 C CNN
	1    3750 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5250 3750 5250
Wire Wire Line
	3750 5250 3750 5300
Wire Wire Line
	3650 5550 3750 5550
Wire Wire Line
	3750 5550 3750 5500
$Comp
L device:D_Schottky D1
U 1 1 5BA67184
P 3850 5850
F 0 "D1" V 3804 5929 50  0000 L CNN
F 1 "SK110" V 3895 5929 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA_Standard" H 3850 5850 50  0001 C CNN
F 3 "~" H 3850 5850 50  0001 C CNN
	1    3850 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 5550 3850 5550
Wire Wire Line
	3850 5550 3850 5700
Connection ~ 3750 5550
$Comp
L power:GND #PWR06
U 1 1 5BA67927
P 3850 6100
F 0 "#PWR06" H 3850 5850 50  0001 C CNN
F 1 "GND" H 3855 5927 50  0000 C CNN
F 2 "" H 3850 6100 50  0001 C CNN
F 3 "" H 3850 6100 50  0001 C CNN
	1    3850 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 6100 3850 6000
$Comp
L device:L L1
U 1 1 5BA6816A
P 4150 5550
F 0 "L1" V 4340 5550 50  0000 C CNN
F 1 "100u" V 4249 5550 50  0000 C CNN
F 2 "Inductors_SMD:L_1812" H 4150 5550 50  0001 C CNN
F 3 "~" H 4150 5550 50  0001 C CNN
	1    4150 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 5550 4000 5550
Connection ~ 3850 5550
Wire Wire Line
	4300 5550 4500 5550
Wire Wire Line
	4500 5550 4500 5600
$Comp
L power:+3V3 #PWR07
U 1 1 5BA68AB6
P 4500 4750
F 0 "#PWR07" H 4500 4600 50  0001 C CNN
F 1 "+3V3" H 4515 4923 50  0000 C CNN
F 2 "" H 4500 4750 50  0001 C CNN
F 3 "" H 4500 4750 50  0001 C CNN
	1    4500 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4750 4500 4850
Connection ~ 4500 5550
Wire Wire Line
	3200 4900 3200 4850
Wire Wire Line
	3200 4850 4500 4850
Connection ~ 4500 4850
Wire Wire Line
	4500 4850 4500 5550
Text Notes 10950 950  2    118  ~ 24
Maximum component height 3mm!
NoConn ~ 5200 2950
NoConn ~ 5200 3050
NoConn ~ 5200 3150
NoConn ~ 5200 3250
NoConn ~ 5200 2750
NoConn ~ 5200 2850
NoConn ~ 5200 2550
$Comp
L custom:Switch S1
U 1 1 5BA6CAC3
P 9600 2050
F 0 "S1" H 9600 2387 60  0000 C CNN
F 1 "UpLeft" H 9600 2281 60  0000 C CNN
F 2 "custom:Membrane_Switch_PCB_Only" H 9700 2050 60  0001 C CNN
F 3 "" H 9700 2050 60  0001 C CNN
	1    9600 2050
	1    0    0    -1  
$EndComp
$Comp
L custom:Switch S2
U 1 1 5BA6CBFC
P 9600 2550
F 0 "S2" H 9600 2887 60  0000 C CNN
F 1 "UpRight" H 9600 2781 60  0000 C CNN
F 2 "custom:Membrane_Switch_PCB_Only" H 9700 2550 60  0001 C CNN
F 3 "" H 9700 2550 60  0001 C CNN
	1    9600 2550
	1    0    0    -1  
$EndComp
$Comp
L custom:Switch S3
U 1 1 5BA6CC38
P 9600 3050
F 0 "S3" H 9600 3387 60  0000 C CNN
F 1 "DownLeft" H 9600 3281 60  0000 C CNN
F 2 "custom:Membrane_Switch_PCB_Only" H 9700 3050 60  0001 C CNN
F 3 "" H 9700 3050 60  0001 C CNN
	1    9600 3050
	1    0    0    -1  
$EndComp
$Comp
L custom:Switch S4
U 1 1 5BA6CC78
P 9600 3550
F 0 "S4" H 9600 3887 60  0000 C CNN
F 1 "DownRight" H 9600 3781 60  0000 C CNN
F 2 "custom:Membrane_Switch_PCB_Only" H 9700 3550 60  0001 C CNN
F 3 "" H 9700 3550 60  0001 C CNN
	1    9600 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2050 10100 2050
Wire Wire Line
	10100 2050 10100 2550
Wire Wire Line
	9950 2550 10100 2550
Connection ~ 10100 2550
Wire Wire Line
	10100 2550 10100 3050
Wire Wire Line
	9950 3050 10100 3050
Connection ~ 10100 3050
Wire Wire Line
	10100 3050 10100 3550
Wire Wire Line
	9950 3550 10100 3550
Connection ~ 10100 3550
Wire Wire Line
	10100 3550 10100 3850
$Comp
L power:GND #PWR015
U 1 1 5BA6EA34
P 10100 3850
F 0 "#PWR015" H 10100 3600 50  0001 C CNN
F 1 "GND" H 10105 3677 50  0000 C CNN
F 2 "" H 10100 3850 50  0001 C CNN
F 3 "" H 10100 3850 50  0001 C CNN
	1    10100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2050 9050 2050
Wire Wire Line
	9050 2550 9250 2550
Wire Wire Line
	9250 3050 8950 3050
Wire Wire Line
	8950 3050 8950 3550
Wire Wire Line
	8950 3550 9250 3550
Wire Wire Line
	8950 2250 8950 3050
Connection ~ 8950 3050
$Comp
L device:R R5
U 1 1 5BA716B0
P 7050 1900
F 0 "R5" V 6950 1900 50  0000 C CNN
F 1 "10k" V 7050 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6980 1900 50  0001 C CNN
F 3 "~" H 7050 1900 50  0001 C CNN
	1    7050 1900
	-1   0    0    1   
$EndComp
$Comp
L device:R R6
U 1 1 5BA71735
P 7300 1900
F 0 "R6" V 7200 1900 50  0000 C CNN
F 1 "10k" V 7300 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7230 1900 50  0001 C CNN
F 3 "~" H 7300 1900 50  0001 C CNN
	1    7300 1900
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR012
U 1 1 5BA732DE
P 7050 1550
F 0 "#PWR012" H 7050 1400 50  0001 C CNN
F 1 "+3V3" H 7065 1723 50  0000 C CNN
F 2 "" H 7050 1550 50  0001 C CNN
F 3 "" H 7050 1550 50  0001 C CNN
	1    7050 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1550 7050 1650
Wire Wire Line
	7050 1650 7300 1650
Wire Wire Line
	7300 1650 7300 1750
Connection ~ 7050 1650
Wire Wire Line
	7050 1650 7050 1700
$Comp
L power:+3V3 #PWR09
U 1 1 5BA754F0
P 5800 1550
F 0 "#PWR09" H 5800 1400 50  0001 C CNN
F 1 "+3V3" H 5815 1723 50  0000 C CNN
F 2 "" H 5800 1550 50  0001 C CNN
F 3 "" H 5800 1550 50  0001 C CNN
	1    5800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1550 5800 1650
$Comp
L device:C C5
U 1 1 5BA76770
P 4900 2700
F 0 "C5" H 4785 2654 50  0000 R CNN
F 1 "100n" H 4785 2745 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603" H 4938 2550 50  0001 C CNN
F 3 "~" H 4900 2700 50  0001 C CNN
	1    4900 2700
	1    0    0    1   
$EndComp
Wire Wire Line
	4900 2550 4900 2400
Wire Wire Line
	4900 1650 5100 1650
Connection ~ 5800 1650
Wire Wire Line
	5800 1650 5800 1950
Wire Wire Line
	4900 2850 4900 3000
Wire Wire Line
	4900 3550 5800 3550
Wire Wire Line
	5800 3550 5800 3450
$Comp
L power:GND #PWR010
U 1 1 5BA7C411
P 5800 3700
F 0 "#PWR010" H 5800 3450 50  0001 C CNN
F 1 "GND" H 5805 3527 50  0000 C CNN
F 2 "" H 5800 3700 50  0001 C CNN
F 3 "" H 5800 3700 50  0001 C CNN
	1    5800 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3700 5800 3550
Connection ~ 5800 3550
Wire Wire Line
	9050 2050 9050 2550
Wire Wire Line
	7300 2050 7300 2350
Wire Wire Line
	7050 2050 7050 2150
$Comp
L power:GND #PWR011
U 1 1 5BA8199D
P 6550 3700
F 0 "#PWR011" H 6550 3450 50  0001 C CNN
F 1 "GND" H 6555 3527 50  0000 C CNN
F 2 "" H 6550 3700 50  0001 C CNN
F 3 "" H 6550 3700 50  0001 C CNN
	1    6550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3050 6400 3050
$Comp
L device:R R2
U 1 1 5BA82F35
P 6550 3400
F 0 "R2" V 6450 3400 50  0000 C CNN
F 1 "10k" V 6550 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6480 3400 50  0001 C CNN
F 3 "~" H 6550 3400 50  0001 C CNN
	1    6550 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 3550 6550 3700
Wire Wire Line
	6550 3050 6550 3250
Wire Wire Line
	6400 2650 6650 2650
Wire Wire Line
	6650 2650 6650 2550
Wire Wire Line
	6650 2550 7600 2550
Wire Wire Line
	7600 2550 7600 2250
Wire Wire Line
	7600 2250 8950 2250
Wire Wire Line
	6400 2550 6600 2550
Wire Wire Line
	6600 2550 6600 2450
Wire Wire Line
	6600 2450 7450 2450
Wire Wire Line
	7450 2450 7450 2050
Wire Wire Line
	7450 2050 9050 2050
Connection ~ 9050 2050
NoConn ~ 6400 2950
NoConn ~ 6400 3150
Wire Wire Line
	5200 2350 4900 2350
Connection ~ 4900 2350
Wire Wire Line
	4900 2350 4900 1650
$Comp
L device:R R1
U 1 1 5BA916C5
P 5100 1900
F 0 "R1" V 5000 1900 50  0000 C CNN
F 1 "10k" V 5100 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5030 1900 50  0001 C CNN
F 3 "~" H 5100 1900 50  0001 C CNN
	1    5100 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 1750 5100 1650
Connection ~ 5100 1650
Wire Wire Line
	5100 1650 5800 1650
Wire Wire Line
	5100 2050 5100 2150
Wire Wire Line
	5100 2150 5200 2150
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5BA9B7B0
P 8300 3400
F 0 "JP1" V 8254 3468 50  0000 L CNN
F 1 "Bootloader" V 8345 3468 50  0000 L CNN
F 2 "custom:Jumper_SolderBridge" H 8300 3400 50  0001 C CNN
F 3 "~" H 8300 3400 50  0001 C CNN
	1    8300 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 2150 8300 3250
$Comp
L power:GND #PWR014
U 1 1 5BA9D945
P 8300 3700
F 0 "#PWR014" H 8300 3450 50  0001 C CNN
F 1 "GND" H 8305 3527 50  0000 C CNN
F 2 "" H 8300 3700 50  0001 C CNN
F 3 "" H 8300 3700 50  0001 C CNN
	1    8300 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3550 8300 3700
$Comp
L device:C C3
U 1 1 5BAA1D9C
P 4450 2700
F 0 "C3" H 4336 2654 50  0000 R CNN
F 1 "1u" H 4336 2745 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805" H 4488 2550 50  0001 C CNN
F 3 "~" H 4450 2700 50  0001 C CNN
	1    4450 2700
	1    0    0    1   
$EndComp
Wire Wire Line
	4450 2550 4450 2400
Wire Wire Line
	4450 2400 4900 2400
Connection ~ 4900 2400
Wire Wire Line
	4900 2400 4900 2350
Wire Wire Line
	4450 2850 4450 3000
Wire Wire Line
	4450 3000 4900 3000
Connection ~ 4900 3000
Wire Wire Line
	4900 3000 4900 3550
$Comp
L Connector:TestPoint TP1
U 1 1 5BAA6B34
P 6100 1600
F 0 "TP1" H 6050 1900 50  0000 L CNN
F 1 "GND" H 6000 1800 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 6300 1600 50  0001 C CNN
F 3 "~" H 6300 1600 50  0001 C CNN
	1    6100 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5BAAE2B4
P 6300 1600
F 0 "TP2" H 6250 1900 50  0000 L CNN
F 1 "Tx" H 6250 1800 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 6500 1600 50  0001 C CNN
F 3 "~" H 6500 1600 50  0001 C CNN
	1    6300 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5BAAE30C
P 6500 1600
F 0 "TP3" H 6450 1900 50  0000 L CNN
F 1 "Rx" H 6450 1800 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 6700 1600 50  0001 C CNN
F 3 "~" H 6700 1600 50  0001 C CNN
	1    6500 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2250 6450 2250
Wire Wire Line
	6450 2250 6450 1900
Wire Wire Line
	6450 1900 6300 1900
Wire Wire Line
	6300 1900 6300 1600
Wire Wire Line
	6500 1600 6500 2450
Wire Wire Line
	6500 2450 6400 2450
$Comp
L power:GND #PWR0101
U 1 1 5BAB6688
P 6100 1700
F 0 "#PWR0101" H 6100 1450 50  0001 C CNN
F 1 "GND" H 6105 1527 50  0000 C CNN
F 2 "" H 6100 1700 50  0001 C CNN
F 3 "" H 6100 1700 50  0001 C CNN
	1    6100 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1700 6100 1600
Wire Notes Line
	5950 1200 6900 1200
Wire Notes Line
	6900 1200 6900 1950
Wire Notes Line
	6900 1950 5950 1950
Wire Notes Line
	5950 1950 5950 1200
Text Notes 6500 1150 2    50   ~ 0
Programming
Wire Notes Line
	8150 3150 8850 3150
Wire Notes Line
	8850 3150 8850 3600
Wire Notes Line
	8850 3600 8150 3600
Wire Notes Line
	8150 3600 8150 3150
Text Notes 8850 3100 2    50   ~ 0
Programming
$Comp
L device:C C6
U 1 1 5BD24A5B
P 4950 5850
F 0 "C6" H 4836 5804 50  0000 R CNN
F 1 "1u" H 4836 5895 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805" H 4988 5700 50  0001 C CNN
F 3 "~" H 4950 5850 50  0001 C CNN
	1    4950 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 5700 4950 5600
Wire Wire Line
	4950 5600 4500 5600
Connection ~ 4500 5600
Wire Wire Line
	4500 5600 4500 5700
Wire Wire Line
	4950 6000 4950 6050
Wire Wire Line
	4950 6050 4500 6050
Connection ~ 4500 6050
Wire Wire Line
	4500 6050 4500 6000
$Comp
L device:C C7
U 1 1 5BD2B427
P 1400 5550
F 0 "C7" H 1286 5504 50  0000 R CNN
F 1 "1u" H 1286 5595 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805" H 1438 5400 50  0001 C CNN
F 3 "~" H 1400 5550 50  0001 C CNN
	1    1400 5550
	1    0    0    1   
$EndComp
Wire Wire Line
	1400 5400 1400 5300
Wire Wire Line
	1400 5300 1700 5300
Connection ~ 1700 5300
Wire Wire Line
	1700 5300 1700 5250
Wire Wire Line
	1400 5700 1400 5750
Wire Wire Line
	1400 5750 1700 5750
Connection ~ 1700 5750
Wire Wire Line
	1700 5750 1700 5700
Connection ~ 7050 2150
Wire Wire Line
	7050 2150 8300 2150
Wire Wire Line
	6400 2150 7050 2150
Wire Wire Line
	6400 2350 7300 2350
$Comp
L Connector:TestPoint TP4
U 1 1 5BD3E20A
P 6700 1600
F 0 "TP4" H 6650 1900 50  0000 L CNN
F 1 "3.3V" H 6650 1800 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 6900 1600 50  0001 C CNN
F 3 "~" H 6900 1600 50  0001 C CNN
	1    6700 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1600 6700 1700
Wire Wire Line
	6700 1700 7050 1700
Connection ~ 7050 1700
Wire Wire Line
	7050 1700 7050 1750
Wire Wire Line
	6900 2750 7000 2750
Wire Wire Line
	7000 2750 7000 3350
Wire Wire Line
	6900 2850 7150 2850
Wire Wire Line
	7150 2850 7150 2750
Wire Wire Line
	7150 2750 7450 2750
$EndSCHEMATC