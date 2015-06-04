EESchema Schematic File Version 2
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
LIBS:special
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
LIBS:tps92511
LIBS:custom
LIBS:max15062
LIBS:led spot-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date "4 jun 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TPS92511 U5
U 1 1 556D27C8
P 5150 3350
AR Path="/556D27B1/556D27C8" Ref="U5"  Part="1" 
AR Path="/556D3024/556D27C8" Ref="U6"  Part="1" 
AR Path="/556D375F/556D27C8" Ref="U7"  Part="1" 
F 0 "U7" H 5150 3400 60  0000 C CNN
F 1 "TPS92511" H 5150 3250 60  0000 C CNN
F 2 "~" H 5150 3350 60  0000 C CNN
F 3 "~" H 5150 3350 60  0000 C CNN
	1    5150 3350
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L2
U 1 1 556D27D7
P 7150 3300
AR Path="/556D27B1/556D27D7" Ref="L2"  Part="1" 
AR Path="/556D3024/556D27D7" Ref="L3"  Part="1" 
AR Path="/556D375F/556D27D7" Ref="L4"  Part="1" 
F 0 "L4" V 7100 3300 40  0000 C CNN
F 1 "82uH" V 7250 3300 40  0000 C CNN
F 2 "~" H 7150 3300 60  0000 C CNN
F 3 "~" H 7150 3300 60  0000 C CNN
F 4 "MSS6132-823ML_" V 7150 3300 60  0001 C CNN "PartNumber"
	1    7150 3300
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D5
U 1 1 556D2801
P 6550 3000
AR Path="/556D27B1/556D2801" Ref="D5"  Part="1" 
AR Path="/556D3024/556D2801" Ref="D6"  Part="1" 
AR Path="/556D375F/556D2801" Ref="D7"  Part="1" 
F 0 "D7" H 6550 3100 40  0000 C CNN
F 1 "100V" H 6550 2900 40  0000 C CNN
F 2 "~" H 6550 3000 60  0000 C CNN
F 3 "~" H 6550 3000 60  0000 C CNN
	1    6550 3000
	0    -1   -1   0   
$EndComp
Text HLabel 5950 2800 0    60   Input ~ 0
Vin
Text HLabel 7750 3300 2    60   Input ~ 0
LEDCat
Wire Wire Line
	7450 3300 7750 3300
Wire Wire Line
	5950 3300 6850 3300
Wire Wire Line
	6300 3200 5950 3200
Wire Wire Line
	6300 2800 6300 3200
Wire Wire Line
	5950 2800 6550 2800
Connection ~ 6300 2800
Wire Wire Line
	6550 3200 6550 3300
Connection ~ 6550 3300
$Comp
L GND #PWR030
U 1 1 556D2B65
P 6050 4150
AR Path="/556D27B1/556D2B65" Ref="#PWR030"  Part="1" 
AR Path="/556D3024/556D2B65" Ref="#PWR036"  Part="1" 
AR Path="/556D375F/556D2B65" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 6050 4150 30  0001 C CNN
F 1 "GND" H 6050 4080 30  0001 C CNN
F 2 "" H 6050 4150 60  0000 C CNN
F 3 "" H 6050 4150 60  0000 C CNN
	1    6050 4150
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 556D2B74
P 6050 3800
AR Path="/556D27B1/556D2B74" Ref="R8"  Part="1" 
AR Path="/556D3024/556D2B74" Ref="R10"  Part="1" 
AR Path="/556D375F/556D2B74" Ref="R12"  Part="1" 
F 0 "R12" V 6130 3800 40  0000 C CNN
F 1 "20k" V 6057 3801 40  0000 C CNN
F 2 "~" V 5980 3800 30  0000 C CNN
F 3 "~" H 6050 3800 30  0000 C CNN
	1    6050 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 4150 6050 4050
Wire Wire Line
	5950 3500 6050 3500
Wire Wire Line
	6050 3500 6050 3550
Text HLabel 6150 3400 2    60   Input ~ 0
DIM
Wire Wire Line
	6150 3400 5950 3400
$Comp
L GND #PWR031
U 1 1 556D2BA7
P 4250 4150
AR Path="/556D27B1/556D2BA7" Ref="#PWR031"  Part="1" 
AR Path="/556D3024/556D2BA7" Ref="#PWR037"  Part="1" 
AR Path="/556D375F/556D2BA7" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 4250 4150 30  0001 C CNN
F 1 "GND" H 4250 4080 30  0001 C CNN
F 2 "" H 4250 4150 60  0000 C CNN
F 3 "" H 4250 4150 60  0000 C CNN
	1    4250 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3500 4250 4150
Wire Wire Line
	4250 3500 4350 3500
$Comp
L R R7
U 1 1 556D2BC1
P 4100 3800
AR Path="/556D27B1/556D2BC1" Ref="R7"  Part="1" 
AR Path="/556D3024/556D2BC1" Ref="R9"  Part="1" 
AR Path="/556D375F/556D2BC1" Ref="R11"  Part="1" 
F 0 "R11" V 4180 3800 40  0000 C CNN
F 1 "5k" V 4107 3801 40  0000 C CNN
F 2 "~" V 4030 3800 30  0000 C CNN
F 3 "~" H 4100 3800 30  0000 C CNN
	1    4100 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 3400 4100 3550
Wire Wire Line
	4100 3400 4350 3400
$Comp
L GND #PWR032
U 1 1 556D2BD6
P 4100 4150
AR Path="/556D27B1/556D2BD6" Ref="#PWR032"  Part="1" 
AR Path="/556D3024/556D2BD6" Ref="#PWR038"  Part="1" 
AR Path="/556D375F/556D2BD6" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 4100 4150 30  0001 C CNN
F 1 "GND" H 4100 4080 30  0001 C CNN
F 2 "" H 4100 4150 60  0000 C CNN
F 3 "" H 4100 4150 60  0000 C CNN
	1    4100 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4150 4100 4050
$Comp
L GND #PWR033
U 1 1 556D2BEF
P 3950 4150
AR Path="/556D27B1/556D2BEF" Ref="#PWR033"  Part="1" 
AR Path="/556D3024/556D2BEF" Ref="#PWR039"  Part="1" 
AR Path="/556D375F/556D2BEF" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 3950 4150 30  0001 C CNN
F 1 "GND" H 3950 4080 30  0001 C CNN
F 2 "" H 3950 4150 60  0000 C CNN
F 3 "" H 3950 4150 60  0000 C CNN
	1    3950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3300 3950 4150
Wire Wire Line
	3950 3300 4350 3300
$Comp
L C C5
U 1 1 556D2C12
P 3800 3800
AR Path="/556D27B1/556D2C12" Ref="C5"  Part="1" 
AR Path="/556D3024/556D2C12" Ref="C6"  Part="1" 
AR Path="/556D375F/556D2C12" Ref="C7"  Part="1" 
F 0 "C7" H 3800 3900 40  0000 L CNN
F 1 "1uF" H 3806 3715 40  0000 L CNN
F 2 "~" H 3838 3650 30  0000 C CNN
F 3 "~" H 3800 3800 60  0000 C CNN
	1    3800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3200 3800 3600
Wire Wire Line
	3800 3200 4350 3200
$Comp
L GND #PWR034
U 1 1 556D2C35
P 3800 4150
AR Path="/556D27B1/556D2C35" Ref="#PWR034"  Part="1" 
AR Path="/556D3024/556D2C35" Ref="#PWR040"  Part="1" 
AR Path="/556D375F/556D2C35" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 3800 4150 30  0001 C CNN
F 1 "GND" H 3800 4080 30  0001 C CNN
F 2 "" H 3800 4150 60  0000 C CNN
F 3 "" H 3800 4150 60  0000 C CNN
	1    3800 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4150 3800 4000
Text HLabel 3300 3500 0    60   Input ~ 0
Vin
$Comp
L C C9
U 1 1 556FFD7B
P 3550 3800
AR Path="/556D27B1/556FFD7B" Ref="C9"  Part="1" 
AR Path="/556D375F/556FFD7B" Ref="C11"  Part="1" 
AR Path="/556D3024/556FFD7B" Ref="C10"  Part="1" 
F 0 "C11" H 3550 3900 40  0000 L CNN
F 1 "1uF" H 3556 3715 40  0000 L CNN
F 2 "~" H 3588 3650 30  0000 C CNN
F 3 "~" H 3550 3800 60  0000 C CNN
	1    3550 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3500 3550 3500
Wire Wire Line
	3550 3500 3550 3600
$Comp
L GND #PWR035
U 1 1 556FFDA1
P 3550 4150
AR Path="/556D27B1/556FFDA1" Ref="#PWR035"  Part="1" 
AR Path="/556D375F/556FFDA1" Ref="#PWR047"  Part="1" 
AR Path="/556D3024/556FFDA1" Ref="#PWR041"  Part="1" 
F 0 "#PWR047" H 3550 4150 30  0001 C CNN
F 1 "GND" H 3550 4080 30  0001 C CNN
F 2 "" H 3550 4150 60  0000 C CNN
F 3 "" H 3550 4150 60  0000 C CNN
	1    3550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4150 3550 4000
$EndSCHEMATC
