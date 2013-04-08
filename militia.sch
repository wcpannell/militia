EESchema Schematic File Version 2  date Mon 08 Apr 2013 01:40:10 AM CDT
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
LIBS:mod
LIBS:militia-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date "8 apr 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 550  1000 700  500 
U 5155AA12
F0 "MCP73831 Charger" 50
F1 "MCP73831.sch" 50
F2 "Vbat" O R 1250 1250 60 
F3 "Vcharge" I R 1250 1100 60 
F4 "ChargeLED-" I R 1250 1400 60 
$EndSheet
$Comp
L GND #PWR04
U 1 1 5155BA90
P 5100 5600
F 0 "#PWR04" H 5100 5600 30  0001 C CNN
F 1 "GND" H 5100 5530 30  0001 C CNN
F 2 "" H 5100 5600 60  0001 C CNN
F 3 "" H 5100 5600 60  0001 C CNN
	1    5100 5600
	1    0    0    -1  
$EndComp
Text Notes 3050 4050 0    60   ~ 0
Vdiv for Vbat\nmonitoring
Wire Wire Line
	1250 1100 11100 1100
Wire Wire Line
	5100 5600 5100 5350
Wire Wire Line
	5100 5350 5250 5350
Text Label 7850 4100 0    60   ~ 0
DWN-MCU
Text Label 7850 4200 0    60   ~ 0
FIRE-MCU
Wire Wire Line
	1250 1400 1900 1400
Text Label 1900 1400 2    60   ~ 0
ChargeLED-
$Comp
L CONN_3X2 P?
U 1 1 515A2371
P 1350 3500
F 0 "P?" H 1350 3750 50  0000 C CNN
F 1 "ISP" V 1350 3550 40  0000 C CNN
F 2 "" H 1350 3500 60  0000 C CNN
F 3 "" H 1350 3500 60  0000 C CNN
	1    1350 3500
	1    0    0    -1  
$EndComp
Text Label 950  3350 2    60   ~ 0
MISO
Text Label 950  3450 2    60   ~ 0
SCK
Text Label 950  3550 2    60   ~ 0
RESET
Text Label 1750 3350 0    60   ~ 0
+VCC
Text Label 1750 3450 0    60   ~ 0
MOSI
Text Label 1750 3550 0    60   ~ 0
Ground
Text Label 5250 2550 2    60   ~ 0
+VCC
Text Label 5250 5300 2    60   ~ 0
Ground
Text Label 7150 3300 0    60   ~ 0
MOSI
Text Label 7150 3400 0    60   ~ 0
MISO
Text Label 7150 3500 0    60   ~ 0
SCK
Text Label 7850 4300 0    60   ~ 0
RESET
$Comp
L C C?
U 1 1 515C410E
P 4900 3600
F 0 "C?" H 4950 3700 50  0000 L CNN
F 1 "C" H 4950 3500 50  0000 L CNN
F 2 "" H 4900 3600 60  0000 C CNN
F 3 "" H 4900 3600 60  0000 C CNN
	1    4900 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1250 8050 1250
$Sheet
S 700  1900 900  1050
U 515C4A2E
F0 "GPIO" 50
F1 "GPIO.sch" 50
$EndSheet
Text Notes 600  3750 0    60   ~ 0
NOTE! While ISP is in use, remove batteries and USB connection.\nTry not to push any buttons either. It probably won't hurt, but why bother?\nISP MUST be configured to provide VCC power TO the board
$Comp
L ATTINY88-A IC?
U 1 1 51623E9A
P 6200 3950
F 0 "IC?" H 5450 5500 50  0000 L BNN
F 1 "ATTINY88-A" H 6500 2300 50  0000 L BNN
F 2 "TQFP32" H 5600 2350 50  0001 C CNN
F 3 "" H 6200 3950 60  0000 C CNN
	1    6200 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2550 5250 2850
Wire Wire Line
	5250 5300 5250 5400
Connection ~ 5250 5350
$EndSCHEMATC
