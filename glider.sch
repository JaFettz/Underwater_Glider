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
L Arduino:Arduino_Uno U1
U 1 1 5E87BB46
P 2110 3260
F 0 "U1" H 2260 4196 50  0000 C CNN
F 1 "Arduino_Uno" H 2260 4105 50  0000 C CNN
F 2 "" H 2110 3260 50  0001 C CNN
F 3 "" H 2110 3260 50  0001 C CNN
	1    2110 3260
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E87CA3F
P 3690 2950
F 0 "R1" H 3760 2996 50  0000 L CNN
F 1 "R" H 3760 2905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P15.24mm_Horizontal" V 3620 2950 50  0001 C CNN
F 3 "~" H 3690 2950 50  0001 C CNN
	1    3690 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E87CD55
P 4000 1790
F 0 "R2" V 4207 1790 50  0000 C CNN
F 1 "R" V 4116 1790 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P15.24mm_Horizontal" V 3930 1790 50  0001 C CNN
F 3 "~" H 4000 1790 50  0001 C CNN
	1    4000 1790
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E87D59B
P 4000 1990
F 0 "R3" V 3793 1990 50  0000 C CNN
F 1 "R" V 3884 1990 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P15.24mm_Horizontal" V 3930 1990 50  0001 C CNN
F 3 "~" H 4000 1990 50  0001 C CNN
	1    4000 1990
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E87D5A1
P 4000 2190
F 0 "R4" V 3793 2190 50  0000 C CNN
F 1 "R" V 3884 2190 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P15.24mm_Horizontal" V 3930 2190 50  0001 C CNN
F 3 "~" H 4000 2190 50  0001 C CNN
	1    4000 2190
	0    1    1    0   
$EndComp
$Comp
L Device:LED_ARGB D1
U 1 1 5E87F35C
P 3390 1990
F 0 "D1" H 3390 1523 50  0000 C CNN
F 1 "LED_ARGB" H 3390 1614 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB_Staggered_Pins" H 3390 1940 50  0001 C CNN
F 3 "~" H 3390 1940 50  0001 C CNN
	1    3390 1990
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Female J2
U 1 1 5E87FCC4
P 6380 3630
F 0 "J2" H 6408 3606 50  0000 L CNN
F 1 "Conn_01x02_Female" H 6408 3515 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 6380 3630 50  0001 C CNN
F 3 "~" H 6380 3630 50  0001 C CNN
	1    6380 3630
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:L293D U2
U 1 1 5E8802C8
P 5280 4180
F 0 "U2" H 5280 5361 50  0000 C CNN
F 1 "L293D" H 5280 5270 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5530 3430 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 4980 4880 50  0001 C CNN
	1    5280 4180
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Reed SW1
U 1 1 5E8818FF
P 3320 2670
F 0 "SW1" H 3320 2892 50  0000 C CNN
F 1 "SW_Reed" H 3320 2801 50  0000 C CNN
F 2 "" H 3320 2670 50  0001 C CNN
F 3 "~" H 3320 2670 50  0001 C CNN
	1    3320 2670
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2190 3590 2190
Wire Wire Line
	3590 1990 3850 1990
Wire Wire Line
	3590 1790 3850 1790
Wire Wire Line
	2660 3510 4150 3510
Wire Wire Line
	4150 3510 4150 2190
Wire Wire Line
	2660 3210 4370 3210
Wire Wire Line
	4370 3210 4370 1790
Wire Wire Line
	4370 1790 4150 1790
Wire Wire Line
	2660 3410 4260 3410
Wire Wire Line
	4260 3410 4260 1990
Wire Wire Line
	4260 1990 4150 1990
Wire Wire Line
	2110 2760 2110 1990
Wire Wire Line
	2110 1990 3120 1990
Wire Wire Line
	3520 2670 3690 2670
Wire Wire Line
	3690 2670 3690 2800
Wire Wire Line
	3120 2670 3120 1990
Connection ~ 3120 1990
Wire Wire Line
	3120 1990 3190 1990
Wire Wire Line
	3690 3100 3690 3710
Wire Wire Line
	3690 3710 2660 3710
Wire Wire Line
	2110 4360 2110 5070
Wire Wire Line
	2110 5070 3690 5070
Wire Wire Line
	3690 5070 3690 5030
Connection ~ 3690 3710
Wire Wire Line
	2660 3910 4780 3910
Wire Wire Line
	4780 3910 4780 3980
Wire Wire Line
	2660 4010 4590 4010
Wire Wire Line
	4590 4010 4590 3780
Wire Wire Line
	4590 3780 4780 3780
Wire Wire Line
	2660 4110 4670 4110
Wire Wire Line
	4670 4110 4670 3580
Wire Wire Line
	4670 3580 4780 3580
Wire Wire Line
	2210 2760 2210 2420
Wire Wire Line
	2210 2420 5380 2420
Wire Wire Line
	5380 2420 5380 3180
Wire Wire Line
	5180 3180 4470 3180
Wire Wire Line
	4470 3180 4470 3810
Wire Wire Line
	4470 3810 2660 3810
Wire Wire Line
	5080 4980 3690 4980
Connection ~ 3690 4980
Wire Wire Line
	3690 4980 3690 3710
Wire Wire Line
	5180 4980 5180 5030
Wire Wire Line
	5180 5030 3690 5030
Connection ~ 3690 5030
Wire Wire Line
	3690 5030 3690 4980
Wire Wire Line
	5780 3580 6180 3580
Wire Wire Line
	6180 3580 6180 3630
Wire Wire Line
	5780 3780 6180 3780
Wire Wire Line
	6180 3730 6180 3780
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5E8A5A25
P 730 3470
F 0 "J1" H 838 3651 50  0000 C CNN
F 1 "Conn_01x02_Male" H 838 3560 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 730 3470 50  0001 C CNN
F 3 "~" H 730 3470 50  0001 C CNN
	1    730  3470
	1    0    0    -1  
$EndComp
Wire Wire Line
	930  3470 1090 3470
Wire Wire Line
	1090 3470 1090 2420
Wire Wire Line
	1090 2420 2210 2420
Connection ~ 2210 2420
Wire Wire Line
	930  3570 1120 3570
Wire Wire Line
	1120 3570 1120 5070
Wire Wire Line
	1120 5070 2110 5070
Connection ~ 2110 5070
$EndSCHEMATC
