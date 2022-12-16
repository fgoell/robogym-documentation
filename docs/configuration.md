# Konfiguration
Hier werden alle Informationen zu den einzelnen Konfigurationen aufgelistet.
[Zurück zur Übersich](../README.md)

## Passwörter
| Computer           | Nutzer      | Passwort   |
| :----------------- | :---------- | :--------- |
| Raspberry PI       | pi          | BECrobogym |
| GUI-Rechner Linux  | robogym_gui | robogym    |
| GUI-Rechner Gui    | moster      | rosy       |
| Steuerungs-Rechner | exacontrol  | becexa     |
| Steuerungs-Rechner | developer   | becdev     |

## Netwerke
| Rechner      | Zweck							| IP				| Port	| Diverses		|
| ------------ | ------------------------------ | ----------------- | ----: | ------------- |
| GUI          | GUI &harr; OPC-UA				| 192.168.79.80		|  -/-	| direct		|
| GUI          | GUI &harr; OPC-UA				| 192.168.79.80		|  -/-	| direct (RT)	|
| GUI          | Docker?						| 172.17.0.1		|		| intern?		|
| GUI          | Docker?						| 172.18.0.1		|		| intern?		|
| GUI          | Docker?						| 172.20.0.1		|		| intern?		|
| Steuerung    | GUI &harr; OPC-UA				| 192.168.79.79		|  4840	| direct		|
| Steuerung    | GUI &harr; OPC-UA				| 192.168.79.79		|  9680	| direct (RT)	|
| Steuerung    | RSI							| 192.168.102.1		|		| switch		|
| Steuerung    | ?								| 192.168.102.2		|		| switch		|
| Steuerung    | Exacontrol &harr; FT-Sensor	| 192.168.102.1		| 49152	| switch		|
| Steuerung    | Exacontrol &harr; LED			| 192.168.103.1		|  -/-	| direct (USB)	|
| Raspberry PI | Exacontrol &harr; LED			| 192.168.103.10	|  9999	| direct		|
| FT-Sensor    | Exacontrol &harr; FT-Sensor	| 192.168.102.3		| 49151	| switch, TCP	|
| FT-Sensor    | Exacontrol &harr; FT-Sensor	| 192.168.102.3		| 49152	| switch, UDP	|

--------------------------------------------------------------------

[README](../README.md)
1. [Konfiguration](./configuration.md)
2. [Installation](./install.md)
3. [Verwendung](./operation.md)
4. [OPC-UA Server](./opc_ua.md)
5. [Details der einzelnen Trainings](./statemachines.md)
6. [LEDs](./led.md)
