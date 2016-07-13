EESchema Schematic File Version 2
LIBS:unified-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:unified-cache
EELAYER 25 0
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
L CONN_4 P1
U 1 1 54CC19CE
P 800 2000
F 0 "P1" V 750 2000 50  0000 C CNN
F 1 "mod_jack_in" V 850 2000 50  0000 C CNN
F 2 "Assman-6p4c" V 950 2000 60  0000 C CNN
F 3 "" H 800 2000 60  0000 C CNN
	1    800  2000
	-1   0    0    1   
$EndComp
$Comp
L GND-RESCUE-unified #PWR01
U 1 1 54CC1A02
P 1150 2250
F 0 "#PWR01" H 1150 2250 30  0001 C CNN
F 1 "GND" H 1150 2180 30  0001 C CNN
F 2 "" H 1150 2250 60  0000 C CNN
F 3 "" H 1150 2250 60  0000 C CNN
	1    1150 2250
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-unified C1
U 1 1 54CC1A95
P 3150 2050
F 0 "C1" H 3150 2150 40  0000 L CNN
F 1 "4u7" H 3156 1965 40  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 3150 1750 30  0000 C CNN
F 3 "" H 3150 2050 60  0000 C CNN
F 4 "C3225X7S2A475M200AB" H 3150 2050 60  0001 C CNN "Part"
	1    3150 2050
	1    0    0    -1  
$EndComp
$Comp
L TPS54360 U2
U 1 1 54CC1ADC
P 4550 1900
F 0 "U2" H 4550 1800 50  0000 C CNN
F 1 "TPS54560" H 4550 2000 50  0000 C CNN
F 2 "SO8_WITH_EP" H 4550 1900 50  0001 C CNN
F 3 "DOCUMENTATION" H 4550 1900 50  0001 C CNN
	1    4550 1900
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-unified #PWR02
U 1 1 54CC1B47
P 4550 2650
F 0 "#PWR02" H 4550 2650 30  0001 C CNN
F 1 "GND" H 4550 2580 30  0001 C CNN
F 2 "" H 4550 2650 60  0000 C CNN
F 3 "" H 4550 2650 60  0000 C CNN
	1    4550 2650
	1    0    0    -1  
$EndComp
NoConn ~ 3650 1950
$Comp
L R-RESCUE-unified R2
U 1 1 54CC1B60
P 3650 2300
F 0 "R2" V 3730 2300 40  0000 C CNN
F 1 "270K" V 3657 2301 40  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 3580 2300 30  0000 C CNN
F 3 "" H 3650 2300 30  0000 C CNN
	1    3650 2300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-unified #PWR03
U 1 1 54CC1B6F
P 3650 2550
F 0 "#PWR03" H 3650 2550 30  0001 C CNN
F 1 "GND" H 3650 2480 30  0001 C CNN
F 2 "" H 3650 2550 60  0000 C CNN
F 3 "" H 3650 2550 60  0000 C CNN
	1    3650 2550
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-unified #PWR04
U 1 1 54CC1B83
P 3150 2250
F 0 "#PWR04" H 3150 2250 30  0001 C CNN
F 1 "GND" H 3150 2180 30  0001 C CNN
F 2 "" H 3150 2250 60  0000 C CNN
F 3 "" H 3150 2250 60  0000 C CNN
	1    3150 2250
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-unified C3
U 1 1 54CC1BB3
P 4550 1250
F 0 "C3" H 4550 1350 40  0000 L CNN
F 1 "100n" H 4556 1165 40  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4650 1100 30  0000 C CNN
F 3 "" H 4550 1250 60  0000 C CNN
	1    4550 1250
	0    -1   -1   0   
$EndComp
$Comp
L INDUCTOR L1
U 1 1 54CC1BD5
P 6300 1750
F 0 "L1" V 6250 1750 40  0000 C CNN
F 1 "XAL6060-103MEB" V 6400 1750 40  0000 C CNN
F 2 "Capacitors_SMD:C_1210" V 6250 1600 28  0000 C CNN
F 3 "" H 6300 1750 60  0000 C CNN
	1    6300 1750
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D2
U 1 1 54CC1BEE
P 6000 1950
F 0 "D2" H 5850 2000 40  0000 C CNN
F 1 "STPS20M100S" H 5950 1850 40  0000 C CNN
F 2 "DPAK3" H 5800 1800 24  0000 C CNN
F 3 "" H 6000 1950 60  0000 C CNN
	1    6000 1950
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-unified #PWR05
U 1 1 54CC1BFD
P 6000 2150
F 0 "#PWR05" H 6000 2150 30  0001 C CNN
F 1 "GND" H 6000 2080 30  0001 C CNN
F 2 "" H 6000 2150 60  0000 C CNN
F 3 "" H 6000 2150 60  0000 C CNN
	1    6000 2150
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-unified R5
U 1 1 54CC1C20
P 6600 2000
F 0 "R5" V 6680 2000 40  0000 C CNN
F 1 "68K" V 6607 2001 40  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 6530 2000 30  0000 C CNN
F 3 "" H 6600 2000 30  0000 C CNN
	1    6600 2000
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-unified R6
U 1 1 54CC1C2D
P 6600 2500
F 0 "R6" V 6680 2500 40  0000 C CNN
F 1 "12K" V 6607 2501 40  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 6530 2500 30  0000 C CNN
F 3 "" H 6600 2500 30  0000 C CNN
	1    6600 2500
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-unified #PWR06
U 1 1 54CC1C44
P 6600 2750
F 0 "#PWR06" H 6600 2750 30  0001 C CNN
F 1 "GND" H 6600 2680 30  0001 C CNN
F 2 "" H 6600 2750 60  0000 C CNN
F 3 "" H 6600 2750 60  0000 C CNN
	1    6600 2750
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-unified #PWR07
U 1 1 54CC1C6E
P 5700 1950
F 0 "#PWR07" H 5700 1950 30  0001 C CNN
F 1 "GND" H 5700 1880 30  0001 C CNN
F 2 "" H 5700 1950 60  0000 C CNN
F 3 "" H 5700 1950 60  0000 C CNN
	1    5700 1950
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-unified R3
U 1 1 54CC1C8F
P 5400 2750
F 0 "R3" V 5480 2750 40  0000 C CNN
F 1 "27K" V 5407 2751 40  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 5330 2750 30  0000 C CNN
F 3 "" H 5400 2750 30  0000 C CNN
	1    5400 2750
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-unified C4
U 1 1 54CC1C9E
P 5400 3200
F 0 "C4" H 5400 3300 40  0000 L CNN
F 1 "1n2" H 5406 3115 40  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5500 3050 30  0000 C CNN
F 3 "" H 5400 3200 60  0000 C CNN
	1    5400 3200
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-unified C5
U 1 1 54CC1CAD
P 5700 3000
F 0 "C5" H 5700 3100 40  0000 L CNN
F 1 "22p" H 5706 2915 40  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5800 2850 30  0000 C CNN
F 3 "" H 5700 3000 60  0000 C CNN
	1    5700 3000
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-unified #PWR08
U 1 1 54CC1D3A
P 5550 3500
F 0 "#PWR08" H 5550 3500 30  0001 C CNN
F 1 "GND" H 5550 3430 30  0001 C CNN
F 2 "" H 5550 3500 60  0000 C CNN
F 3 "" H 5550 3500 60  0000 C CNN
	1    5550 3500
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-unified C6
U 1 1 54CC1D58
P 6950 1950
F 0 "C6" H 6950 2050 40  0000 L CNN
F 1 "82u" H 6956 1865 40  0000 L CNN
F 2 "B6" H 6988 1800 30  0000 C CNN
F 3 "" H 6950 1950 60  0000 C CNN
F 4 "16SVPF82M" H 6950 1950 60  0001 C CNN "Part"
	1    6950 1950
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-unified C7
U 1 1 54CC1D65
P 7200 1950
F 0 "C7" H 7200 2050 40  0000 L CNN
F 1 "82u" H 7206 1865 40  0000 L CNN
F 2 "B6" H 7238 1800 30  0000 C CNN
F 3 "" H 7200 1950 60  0000 C CNN
F 4 "16SVPF82M" H 7200 1950 60  0001 C CNN "Part"
	1    7200 1950
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-unified #PWR09
U 1 1 54CC1D6D
P 6950 2150
F 0 "#PWR09" H 6950 2150 30  0001 C CNN
F 1 "GND" H 6950 2080 30  0001 C CNN
F 2 "" H 6950 2150 60  0000 C CNN
F 3 "" H 6950 2150 60  0000 C CNN
	1    6950 2150
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-unified #PWR010
U 1 1 54CC1D7A
P 7200 2150
F 0 "#PWR010" H 7200 2150 30  0001 C CNN
F 1 "GND" H 7200 2080 30  0001 C CNN
F 2 "" H 7200 2150 60  0000 C CNN
F 3 "" H 7200 2150 60  0000 C CNN
	1    7200 2150
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR011
U 1 1 54CC1DB6
P 7800 1750
F 0 "#PWR011" H 7800 1950 40  0001 C CNN
F 1 "VPP" H 7800 1900 40  0000 C CNN
F 2 "" H 7800 1750 60  0000 C CNN
F 3 "" H 7800 1750 60  0000 C CNN
	1    7800 1750
	0    1    1    0   
$EndComp
$Comp
L ST485E U1
U 1 1 54CC1E21
P 4100 4100
F 0 "U1" H 4100 4050 60  0000 C CNN
F 1 "ISL83485IBZ" H 4100 3800 60  0000 C CNN
F 2 "SO8E" H 4100 3950 60  0000 C CNN
F 3 "" H 4150 4100 60  0000 C CNN
	1    4100 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1150 2150 1150 2250
Connection ~ 3150 1850
Wire Wire Line
	4350 1250 3650 1250
Wire Wire Line
	3650 1250 3650 1750
Wire Wire Line
	4750 1250 5450 1250
Wire Wire Line
	5450 1250 5450 1750
Wire Wire Line
	5450 1750 6000 1750
Connection ~ 5450 1750
Wire Wire Line
	6600 2250 5450 2250
Wire Wire Line
	5450 2250 5450 2050
Wire Wire Line
	5450 1850 5700 1850
Wire Wire Line
	5700 1850 5700 1950
Wire Wire Line
	5450 1950 5550 1950
Wire Wire Line
	5550 1950 5550 2500
Wire Wire Line
	5400 2500 5550 2500
Wire Wire Line
	5550 2500 5700 2500
Wire Wire Line
	5700 2500 5700 2800
Connection ~ 5550 2500
Wire Wire Line
	5700 3400 5700 3200
Wire Wire Line
	5400 3400 5550 3400
Wire Wire Line
	5550 3400 5700 3400
Wire Wire Line
	5550 3400 5550 3500
Connection ~ 5550 3400
Connection ~ 6600 2250
Wire Wire Line
	6600 1750 6950 1750
Wire Wire Line
	6950 1750 7200 1750
Wire Wire Line
	7200 1750 7400 1750
Wire Wire Line
	7400 1750 7800 1750
Connection ~ 6600 1750
Connection ~ 6950 1750
Connection ~ 7200 1750
Connection ~ 6000 1750
Wire Wire Line
	1150 1950 1500 1950
Wire Wire Line
	1150 2050 1400 2050
$Comp
L R-RESCUE-unified R1
U 1 1 54CC1F6E
P 3000 4100
F 0 "R1" V 3080 4100 40  0000 C CNN
F 1 "120R" V 3007 4101 40  0000 C CNN
F 2 "Capacitors_SMD:C_0603" V 2930 4100 30  0000 C CNN
F 3 "" H 3000 4100 30  0000 C CNN
	1    3000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2050 1400 4300
Wire Wire Line
	3200 4350 3200 4150
Wire Wire Line
	3200 4150 3400 4150
Connection ~ 3000 4350
Wire Wire Line
	3400 4050 3200 4050
Wire Wire Line
	3200 3850 3200 4050
Wire Wire Line
	1500 1950 1500 4000
Connection ~ 3000 3850
$Comp
L GND-RESCUE-unified #PWR012
U 1 1 54CC2102
P 3400 4350
F 0 "#PWR012" H 3400 4350 30  0001 C CNN
F 1 "GND" H 3400 4280 30  0001 C CNN
F 2 "" H 3400 4350 60  0000 C CNN
F 3 "" H 3400 4350 60  0000 C CNN
	1    3400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4350 3400 4250
$Comp
L NCP1117ST33T3G U4
U 1 1 54CC21C1
P 7800 2350
F 0 "U4" H 7800 2600 40  0000 C CNN
F 1 "NCP1117ST33T3G" H 7800 2550 40  0000 C CNN
F 2 "SOT223" H 7950 2150 28  0000 C CNN
F 3 "" H 7800 2350 60  0000 C CNN
	1    7800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1750 7400 2300
$Comp
L GND-RESCUE-unified #PWR013
U 1 1 54CC2206
P 7800 2600
F 0 "#PWR013" H 7800 2600 30  0001 C CNN
F 1 "GND" H 7800 2530 30  0001 C CNN
F 2 "" H 7800 2600 60  0000 C CNN
F 3 "" H 7800 2600 60  0000 C CNN
	1    7800 2600
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-unified C9
U 1 1 54CC2215
P 8300 2500
F 0 "C9" H 8300 2600 40  0000 L CNN
F 1 "2u2" H 8306 2415 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8400 2350 30  0000 C CNN
F 3 "" H 8300 2500 60  0000 C CNN
	1    8300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2300 8300 2300
Wire Wire Line
	8300 2300 8550 2300
$Comp
L GND-RESCUE-unified #PWR014
U 1 1 54CC228D
P 8300 2700
F 0 "#PWR014" H 8300 2700 30  0001 C CNN
F 1 "GND" H 8300 2630 30  0001 C CNN
F 2 "" H 8300 2700 60  0000 C CNN
F 3 "" H 8300 2700 60  0000 C CNN
	1    8300 2700
	1    0    0    -1  
$EndComp
Connection ~ 8300 2300
$Comp
L 3V3 #PWR015
U 1 1 54CC22D0
P 8550 2300
F 0 "#PWR015" H 8550 2400 40  0001 C CNN
F 1 "3V3" H 8550 2425 40  0000 C CNN
F 2 "" H 8550 2300 60  0000 C CNN
F 3 "" H 8550 2300 60  0000 C CNN
	1    8550 2300
	0    1    1    0   
$EndComp
Connection ~ 7400 1750
$Comp
L 3V3 #PWR016
U 1 1 54CC2678
P 3400 3850
F 0 "#PWR016" H 3400 3950 40  0001 C CNN
F 1 "3V3" H 3400 3975 40  0000 C CNN
F 2 "" H 3400 3850 60  0000 C CNN
F 3 "" H 3400 3850 60  0000 C CNN
	1    3400 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3850 3400 3950
$Comp
L STM32F030-32 U3
U 1 1 54CC2DA0
P 6250 5150
F 0 "U3" H 6250 5050 50  0000 C CNN
F 1 "STM32F030-32" H 6250 5250 50  0000 C CNN
F 2 "LQFP32" H 6250 5150 50  0001 C CNN
F 3 "DOCUMENTATION" H 6250 5150 50  0001 C CNN
	1    6250 5150
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR017
U 1 1 54CC2DAF
P 5200 4800
F 0 "#PWR017" H 5200 4900 40  0001 C CNN
F 1 "3V3" H 5200 4925 40  0000 C CNN
F 2 "" H 5200 4800 60  0000 C CNN
F 3 "" H 5200 4800 60  0000 C CNN
	1    5200 4800
	0    -1   -1   0   
$EndComp
$Comp
L 3V3 #PWR018
U 1 1 54CC2DBC
P 5200 5200
F 0 "#PWR018" H 5200 5300 40  0001 C CNN
F 1 "3V3" H 5200 5325 40  0000 C CNN
F 2 "" H 5200 5200 60  0000 C CNN
F 3 "" H 5200 5200 60  0000 C CNN
	1    5200 5200
	0    -1   -1   0   
$EndComp
NoConn ~ 5200 5100
$Comp
L GND-RESCUE-unified #PWR019
U 1 1 54CC2DC4
P 6000 4100
F 0 "#PWR019" H 6000 4100 30  0001 C CNN
F 1 "GND" H 6000 4030 30  0001 C CNN
F 2 "" H 6000 4100 60  0000 C CNN
F 3 "" H 6000 4100 60  0000 C CNN
	1    6000 4100
	-1   0    0    1   
$EndComp
$Comp
L GND-RESCUE-unified #PWR020
U 1 1 54CC2DD1
P 5900 4100
F 0 "#PWR020" H 5900 4100 30  0001 C CNN
F 1 "GND" H 5900 4030 30  0001 C CNN
F 2 "" H 5900 4100 60  0000 C CNN
F 3 "" H 5900 4100 60  0000 C CNN
	1    5900 4100
	-1   0    0    1   
$EndComp
$Comp
L 3V3 #PWR021
U 1 1 54CC2DD7
P 7300 5500
F 0 "#PWR021" H 7300 5600 40  0001 C CNN
F 1 "3V3" H 7300 5625 40  0000 C CNN
F 2 "" H 7300 5500 60  0000 C CNN
F 3 "" H 7300 5500 60  0000 C CNN
	1    7300 5500
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-unified #PWR022
U 1 1 54CC2DE7
P 6600 6200
F 0 "#PWR022" H 6600 6200 30  0001 C CNN
F 1 "GND" H 6600 6130 30  0001 C CNN
F 2 "" H 6600 6200 60  0000 C CNN
F 3 "" H 6600 6200 60  0000 C CNN
	1    6600 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4100 6300 3800
Wire Wire Line
	7300 4900 7750 4900
Text Label 7400 4900 0    60   ~ 0
SWDAT
Wire Wire Line
	7300 4800 8150 4800
Text Label 7400 4800 0    60   ~ 0
SWCLK
Wire Wire Line
	6500 4100 6500 3900
$Comp
L CONN_4 P3
U 1 1 54CC313F
P 7800 3850
F 0 "P3" V 7750 3850 50  0000 C CNN
F 1 "LED_STRIP" V 7850 3850 50  0000 C CNN
F 2 "SIL-4" V 7950 3850 60  0000 C CNN
F 3 "" H 7800 3850 60  0000 C CNN
	1    7800 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3900 6700 3900
Wire Wire Line
	6700 3900 7450 3900
Wire Wire Line
	6300 3800 6900 3800
Wire Wire Line
	6900 3800 7450 3800
$Comp
L GND-RESCUE-unified #PWR023
U 1 1 54CC39A8
P 7450 4100
F 0 "#PWR023" H 7450 4100 30  0001 C CNN
F 1 "GND" H 7450 4030 30  0001 C CNN
F 2 "" H 7450 4100 60  0000 C CNN
F 3 "" H 7450 4100 60  0000 C CNN
	1    7450 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4100 7450 4000
Wire Wire Line
	7450 3700 7450 3600
$Comp
L VPP #PWR024
U 1 1 54CC3A25
P 7450 3600
F 0 "#PWR024" H 7450 3800 40  0001 C CNN
F 1 "VPP" H 7450 3750 40  0000 C CNN
F 2 "" H 7450 3600 60  0000 C CNN
F 3 "" H 7450 3600 60  0000 C CNN
	1    7450 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3900 6700 3650
Connection ~ 6700 3900
Wire Wire Line
	6900 3800 6900 3650
$Comp
L R-RESCUE-unified R7
U 1 1 54CC3B88
P 6700 3400
F 0 "R7" V 6780 3400 40  0000 C CNN
F 1 "1K" V 6707 3401 40  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 6630 3400 30  0000 C CNN
F 3 "" H 6700 3400 30  0000 C CNN
	1    6700 3400
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-unified R8
U 1 1 54CC3B95
P 6900 3400
F 0 "R8" V 6980 3400 40  0000 C CNN
F 1 "1K" V 6907 3401 40  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 6830 3400 30  0000 C CNN
F 3 "" H 6900 3400 30  0000 C CNN
	1    6900 3400
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR025
U 1 1 54CC3BA5
P 6700 3150
F 0 "#PWR025" H 6700 3350 40  0001 C CNN
F 1 "VPP" H 6700 3300 40  0000 C CNN
F 2 "" H 6700 3150 60  0000 C CNN
F 3 "" H 6700 3150 60  0000 C CNN
	1    6700 3150
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR026
U 1 1 54CC3BAB
P 6900 3150
F 0 "#PWR026" H 6900 3350 40  0001 C CNN
F 1 "VPP" H 6900 3300 40  0000 C CNN
F 2 "" H 6900 3150 60  0000 C CNN
F 3 "" H 6900 3150 60  0000 C CNN
	1    6900 3150
	1    0    0    -1  
$EndComp
Connection ~ 6900 3800
Text Label 7100 3900 0    60   ~ 0
CLK
Text Label 7100 3800 0    60   ~ 0
DAT
$Comp
L CONN_4 P4
U 1 1 54CC3F0E
P 8500 4850
F 0 "P4" V 8450 4850 50  0000 C CNN
F 1 "ICSP" V 8550 4850 50  0000 C CNN
F 2 "SIL-4" V 8650 4850 60  0000 C CNN
F 3 "" H 8500 4850 60  0000 C CNN
	1    8500 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4900 7750 5000
Wire Wire Line
	7750 5000 8150 5000
Wire Wire Line
	8150 4900 8050 4900
Wire Wire Line
	8050 4900 8050 5100
$Comp
L GND-RESCUE-unified #PWR027
U 1 1 54CC43E3
P 8050 5100
F 0 "#PWR027" H 8050 5100 30  0001 C CNN
F 1 "GND" H 8050 5030 30  0001 C CNN
F 2 "" H 8050 5100 60  0000 C CNN
F 3 "" H 8050 5100 60  0000 C CNN
	1    8050 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4700 8050 4700
Wire Wire Line
	8050 4700 8050 4600
$Comp
L 3V3 #PWR028
U 1 1 54CC4432
P 8050 4600
F 0 "#PWR028" H 8050 4700 40  0001 C CNN
F 1 "3V3" H 8050 4725 40  0000 C CNN
F 2 "" H 8050 4600 60  0000 C CNN
F 3 "" H 8050 4600 60  0000 C CNN
	1    8050 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5400 4900 5400
Wire Wire Line
	4900 5400 4900 4100
Wire Wire Line
	4900 4100 4800 4100
Wire Wire Line
	4800 4050 4800 4100
Wire Wire Line
	4800 4100 4800 4150
Connection ~ 4800 4100
Wire Wire Line
	5900 6200 5000 6200
Wire Wire Line
	5000 6200 5000 3950
Wire Wire Line
	5000 3950 4800 3950
Wire Wire Line
	4800 4250 4800 5500
Wire Wire Line
	4800 5500 5200 5500
$Comp
L 3V3 #PWR029
U 1 1 54CC4D1D
P 3800 3300
F 0 "#PWR029" H 3800 3400 40  0001 C CNN
F 1 "3V3" H 3800 3425 40  0000 C CNN
F 2 "" H 3800 3300 60  0000 C CNN
F 3 "" H 3800 3300 60  0000 C CNN
	1    3800 3300
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-unified C2
U 1 1 54CC4D25
P 3800 3500
F 0 "C2" H 3800 3600 40  0000 L CNN
F 1 "100n" H 3806 3415 40  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3900 3350 30  0000 C CNN
F 3 "" H 3800 3500 60  0000 C CNN
	1    3800 3500
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-unified #PWR030
U 1 1 54CC4D34
P 3800 3700
F 0 "#PWR030" H 3800 3700 30  0001 C CNN
F 1 "GND" H 3800 3630 30  0001 C CNN
F 2 "" H 3800 3700 60  0000 C CNN
F 3 "" H 3800 3700 60  0000 C CNN
	1    3800 3700
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR031
U 1 1 54CC4D46
P 7200 5800
F 0 "#PWR031" H 7200 5900 40  0001 C CNN
F 1 "3V3" H 7200 5925 40  0000 C CNN
F 2 "" H 7200 5800 60  0000 C CNN
F 3 "" H 7200 5800 60  0000 C CNN
	1    7200 5800
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-unified C8
U 1 1 54CC4D4C
P 7200 6000
F 0 "C8" H 7200 6100 40  0000 L CNN
F 1 "100n" H 7206 5915 40  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 7300 5850 30  0000 C CNN
F 3 "" H 7200 6000 60  0000 C CNN
	1    7200 6000
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-unified #PWR032
U 1 1 54CC4D52
P 7200 6200
F 0 "#PWR032" H 7200 6200 30  0001 C CNN
F 1 "GND" H 7200 6130 30  0001 C CNN
F 2 "" H 7200 6200 60  0000 C CNN
F 3 "" H 7200 6200 60  0000 C CNN
	1    7200 6200
	1    0    0    -1  
$EndComp
$Comp
L TACT SW1
U 1 1 54CC4E30
P 2950 5600
F 0 "SW1" H 2950 5900 60  0000 C CNN
F 1 "TL3315NF160Q" H 2950 5450 60  0000 C CNN
F 2 "TACT-SW-SMD" H 2950 5350 30  0000 C CNN
F 3 "" H 2950 5600 60  0000 C CNN
	1    2950 5600
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-unified R4
U 1 1 54CC5020
P 4350 5000
F 0 "R4" V 4430 5000 40  0000 C CNN
F 1 "220R" V 4357 5001 40  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 4280 5000 30  0000 C CNN
F 3 "" H 4350 5000 30  0000 C CNN
	1    4350 5000
	0    -1   -1   0   
$EndComp
$Comp
L LED-RESCUE-unified D1
U 1 1 54CC502F
P 3900 5000
F 0 "D1" H 3900 5100 50  0000 C CNN
F 1 "USR_LED" H 3900 4900 50  0000 C CNN
F 2 "SA0603_LED" H 3900 5150 28  0000 C CNN
F 3 "" H 3900 5000 60  0000 C CNN
	1    3900 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 5000 3700 5200
$Comp
L GND-RESCUE-unified #PWR033
U 1 1 54CC50A3
P 3700 5200
F 0 "#PWR033" H 3700 5200 30  0001 C CNN
F 1 "GND" H 3700 5130 30  0001 C CNN
F 2 "" H 3700 5200 60  0000 C CNN
F 3 "" H 3700 5200 60  0000 C CNN
	1    3700 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5000 5200 5000
Wire Wire Line
	2650 5900 2650 6050
$Comp
L GND-RESCUE-unified #PWR034
U 1 1 54CC5156
P 2650 6050
F 0 "#PWR034" H 2650 6050 30  0001 C CNN
F 1 "GND" H 2650 5980 30  0001 C CNN
F 2 "" H 2650 6050 60  0000 C CNN
F 3 "" H 2650 6050 60  0000 C CNN
	1    2650 6050
	1    0    0    -1  
$EndComp
$Comp
L +48V #PWR035
U 1 1 54CC5553
P 3150 2800
F 0 "#PWR035" H 3150 2930 20  0001 C CNN
F 1 "+48V" H 3150 2900 30  0000 C CNN
F 2 "" H 3150 2800 60  0000 C CNN
F 3 "" H 3150 2800 60  0000 C CNN
	1    3150 2800
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P2
U 1 1 54CC555B
P 3300 3150
F 0 "P2" V 3250 3150 50  0000 C CNN
F 1 "PWR_TST" V 3350 3150 50  0000 C CNN
F 2 "SIL-4" V 3450 3150 60  0000 C CNN
F 3 "" H 3300 3150 60  0000 C CNN
	1    3300 3150
	0    -1   1    0   
$EndComp
$Comp
L VPP #PWR036
U 1 1 54CC5587
P 3250 2800
F 0 "#PWR036" H 3250 3000 40  0001 C CNN
F 1 "VPP" H 3250 2950 40  0000 C CNN
F 2 "" H 3250 2800 60  0000 C CNN
F 3 "" H 3250 2800 60  0000 C CNN
	1    3250 2800
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR037
U 1 1 54CC558D
P 3350 2800
F 0 "#PWR037" H 3350 2900 40  0001 C CNN
F 1 "3V3" H 3350 2925 40  0000 C CNN
F 2 "" H 3350 2800 60  0000 C CNN
F 3 "" H 3350 2800 60  0000 C CNN
	1    3350 2800
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-unified #PWR038
U 1 1 54CC568C
P 3450 2800
F 0 "#PWR038" H 3450 2800 30  0001 C CNN
F 1 "GND" H 3450 2730 30  0001 C CNN
F 2 "" H 3450 2800 60  0000 C CNN
F 3 "" H 3450 2800 60  0000 C CNN
	1    3450 2800
	-1   0    0    1   
$EndComp
Text Label 6700 2300 0    60   ~ 0
2x 16SVPF82M
Wire Wire Line
	5300 4000 6600 4000
Wire Wire Line
	5300 4000 5300 4600
Wire Wire Line
	5300 4600 3250 4600
Wire Wire Line
	3250 4600 3250 5300
$Comp
L MOSFET_P Q1
U 1 1 5557CB96
P 2700 1950
F 0 "Q1" V 2650 2200 60  0000 R CNN
F 1 "CPH3351-TL-W" V 2900 2250 60  0000 R CNN
F 2 "SOT23GDS" V 2550 2100 30  0000 C CNN
F 3 "" H 2700 1950 60  0000 C CNN
	1    2700 1950
	0    1    -1   0   
$EndComp
$Comp
L R-RESCUE-unified R9
U 1 1 5557CBF1
P 2300 2100
F 0 "R9" V 2380 2100 40  0000 C CNN
F 1 "22K" V 2307 2101 40  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 2230 2100 30  0000 C CNN
F 3 "" H 2300 2100 30  0000 C CNN
	1    2300 2100
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-unified R10
U 1 1 5557CC00
P 2300 2600
F 0 "R10" V 2380 2600 40  0000 C CNN
F 1 "47K" V 2307 2601 40  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 2230 2600 30  0000 C CNN
F 3 "" H 2300 2600 30  0000 C CNN
	1    2300 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2350 2700 2150
Connection ~ 2300 1850
$Comp
L GND-RESCUE-unified #PWR039
U 1 1 5557CD14
P 2300 2850
F 0 "#PWR039" H 2300 2850 30  0001 C CNN
F 1 "GND" H 2300 2780 30  0001 C CNN
F 2 "" H 2300 2850 60  0000 C CNN
F 3 "" H 2300 2850 60  0000 C CNN
	1    2300 2850
	1    0    0    -1  
$EndComp
Connection ~ 2300 2350
Wire Wire Line
	1150 1850 1850 1850
Wire Wire Line
	1850 1850 2300 1850
Wire Wire Line
	2300 1850 2500 1850
$Comp
L +48V #PWR040
U 1 1 5557D0EA
P 3150 1850
F 0 "#PWR040" H 3150 1980 20  0001 C CNN
F 1 "+48V" H 3150 2000 30  0000 C CNN
F 2 "" H 3150 1850 60  0000 C CNN
F 3 "" H 3150 1850 60  0000 C CNN
	1    3150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2350 2700 2350
Wire Wire Line
	2900 1850 3150 1850
Wire Wire Line
	3150 1850 3350 1850
Wire Wire Line
	3350 1850 3650 1850
$Comp
L DIODESCH D3
U 1 1 5557D3D3
P 1850 2050
F 0 "D3" H 1850 2150 40  0000 C CNN
F 1 "1SMB58AT3G" H 1850 1950 40  0000 C CNN
F 2 "DO-214AA(SMB)" H 1850 1900 30  0000 C CNN
F 3 "" H 1850 2050 60  0000 C CNN
	1    1850 2050
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-unified #PWR041
U 1 1 5557D3F1
P 1850 2250
F 0 "#PWR041" H 1850 2250 30  0001 C CNN
F 1 "GND" H 1850 2180 30  0001 C CNN
F 2 "" H 1850 2250 60  0000 C CNN
F 3 "" H 1850 2250 60  0000 C CNN
	1    1850 2250
	1    0    0    -1  
$EndComp
Connection ~ 1850 1850
$Comp
L R-RESCUE-unified R11
U 1 1 5557D63A
P 3000 3600
F 0 "R11" V 3080 3600 40  0000 C CNN
F 1 "680R" V 3007 3601 40  0000 C CNN
F 2 "Capacitors_SMD:C_0603" V 2930 3600 30  0000 C CNN
F 3 "" H 3000 3600 30  0000 C CNN
	1    3000 3600
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-unified R12
U 1 1 5557D6A2
P 3000 4600
F 0 "R12" V 3080 4600 40  0000 C CNN
F 1 "680R" V 3007 4601 40  0000 C CNN
F 2 "Capacitors_SMD:C_0603" V 2930 4600 30  0000 C CNN
F 3 "" H 3000 4600 30  0000 C CNN
	1    3000 4600
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR042
U 1 1 5557D984
P 2800 4850
F 0 "#PWR042" H 2800 4950 40  0001 C CNN
F 1 "3V3" H 2800 4975 40  0000 C CNN
F 2 "" H 2800 4850 60  0000 C CNN
F 3 "" H 2800 4850 60  0000 C CNN
	1    2800 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4850 3000 4850
Wire Wire Line
	3000 3350 2800 3350
Wire Wire Line
	2800 3350 2800 3400
$Comp
L GND-RESCUE-unified #PWR043
U 1 1 5557DA4B
P 2800 3400
F 0 "#PWR043" H 2800 3400 30  0001 C CNN
F 1 "GND" H 2800 3330 30  0001 C CNN
F 2 "" H 2800 3400 60  0000 C CNN
F 3 "" H 2800 3400 60  0000 C CNN
	1    2800 3400
	1    0    0    -1  
$EndComp
$Comp
L 2CH-TVS U5
U 1 1 556A4BC1
P 2350 4150
F 0 "U5" H 2350 4450 60  0000 C CNN
F 1 "TPD2E2U06QDBZRQ1" H 2350 3850 60  0000 C CNN
F 2 "SOT23" H 2350 3800 30  0000 C CNN
F 3 "" H 2350 4150 60  0000 C CNN
	1    2350 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4000 1850 4000
Wire Wire Line
	1850 4000 1850 3700
Wire Wire Line
	1850 3700 2750 3700
Wire Wire Line
	2750 3700 2750 3850
Wire Wire Line
	2750 3850 3000 3850
Wire Wire Line
	3000 3850 3200 3850
Wire Wire Line
	2750 4350 3000 4350
Wire Wire Line
	3000 4350 3200 4350
Wire Wire Line
	2750 4350 2750 4550
Wire Wire Line
	2750 4550 1850 4550
Wire Wire Line
	1850 4550 1850 4300
Wire Wire Line
	1850 4300 1400 4300
Connection ~ 1850 4300
Connection ~ 1850 4000
$Comp
L GND-RESCUE-unified #PWR044
U 1 1 556A4EDE
P 2850 4250
F 0 "#PWR044" H 2850 4250 30  0001 C CNN
F 1 "GND" H 2850 4180 30  0001 C CNN
F 2 "" H 2850 4250 60  0000 C CNN
F 3 "" H 2850 4250 60  0000 C CNN
	1    2850 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4150 2850 4250
Text Notes 6200 1050 0    60   ~ 0
Vpp
Text Notes 6650 1050 0    60   ~ 0
R6
Text Notes 7050 1050 0    60   ~ 0
R5
Text Notes 6200 1150 0    60   ~ 0
12V
Text Notes 6200 1250 0    60   ~ 0
5V
Text Notes 7050 1250 0    60   ~ 0
68K
Text Notes 6650 1250 0    60   ~ 0
12K
Text Notes 6650 1150 0    60   ~ 0
22K
Text Notes 7050 1150 0    60   ~ 0
270K
Wire Notes Line
	6150 1300 7350 1300
Wire Notes Line
	7350 1300 7350 900 
Wire Notes Line
	7350 900  6150 900 
Wire Notes Line
	6150 900  6150 1300
$Comp
L C-RESCUE-unified C12
U 1 1 5725468D
P 7550 6000
F 0 "C12" H 7550 6100 40  0000 L CNN
F 1 "100n" H 7556 5915 40  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 7650 5850 30  0000 C CNN
F 3 "" H 7550 6000 60  0000 C CNN
	1    7550 6000
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-unified #PWR045
U 1 1 572547D8
P 7550 6200
F 0 "#PWR045" H 7550 6200 30  0001 C CNN
F 1 "GND" H 7550 6130 30  0001 C CNN
F 2 "" H 7550 6200 60  0000 C CNN
F 3 "" H 7550 6200 60  0000 C CNN
	1    7550 6200
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR046
U 1 1 572548F8
P 7550 5800
F 0 "#PWR046" H 7550 5900 40  0001 C CNN
F 1 "3V3" H 7550 5925 40  0000 C CNN
F 2 "" H 7550 5800 60  0000 C CNN
F 3 "" H 7550 5800 60  0000 C CNN
	1    7550 5800
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-unified C10
U 1 1 57254CFC
P 3350 2050
F 0 "C10" H 3350 2150 40  0000 L CNN
F 1 "4u7" H 3356 1965 40  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 3250 1700 30  0000 C CNN
F 3 "" H 3350 2050 60  0000 C CNN
F 4 "C3225X7S2A475M200AB" H 3350 2050 60  0001 C CNN "Part"
	1    3350 2050
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-unified #PWR047
U 1 1 57254D8C
P 3350 2250
F 0 "#PWR047" H 3350 2250 30  0001 C CNN
F 1 "GND" H 3350 2180 30  0001 C CNN
F 2 "" H 3350 2250 60  0000 C CNN
F 3 "" H 3350 2250 60  0000 C CNN
	1    3350 2250
	1    0    0    -1  
$EndComp
Connection ~ 3350 1850
Text Notes 2500 1700 0    60   ~ 0
Pd=100mW
Text Notes 2200 2550 1    60   ~ 0
Pd=50mW
Text Notes 6100 1600 0    60   ~ 0
Pd=750mW
Text Notes 1200 1850 0    60   ~ 0
Iin=700mA\nVin=48V
Text Notes 7450 1750 0    60   ~ 0
Iout=5A\nVout=5V
Text Notes 4350 1450 0    60   ~ 0
Pd=1.2W
Text Notes 5900 2100 1    60   ~ 0
Pd=2W
Text Notes 7450 1900 0    60   ~ 0
Total Pd=4.2W
Wire Wire Line
	6600 4000 6600 4100
$EndSCHEMATC
