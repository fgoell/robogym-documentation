# Installationsanleitung

## Exacontrol
1. Installation von Exacontrol wie von Lasse und Alex dokumentiert.
2. Erstellen eines "scripts" Ordners im Home Verzeichnis mit ```mkdir /home/exacontrol/scripts```
3. Kopieren der

2. Kopieren der ".service" Dateien aus "/scripts/systemd/system/" nach "/etc/systemd/system/"
3. Aktualiseren des System Daemon mit ""
4. Aktivieren der Services mit:
	- "systemctl activate RoboGym-ExaCore.service"
	- "systemctl activate RoboGym-Fieldbus.service"
	- "systemctl activate RoboGym-OPCUA.service"
	- "systemctl activate RoboGym-Robot.service"
5. Starten der Services mit:
	- "systemctl start RoboGym-ExaCore.service"
	- "systemctl start RoboGym-Fieldbus.service"
	- "systemctl start RoboGym-OPCUA.service"
	- "systemctl start RoboGym-Robot.service"

## Monitoring System
1. Installation von Terminator
	- Ubuntu: "sudo apt install terminator"
	- RHEL: "sudo yum install -y epel-release" und "sudo yum install -y terminator"
2. Kopieren den Konfiguration von "/scripts/terminator/config" nach "~/.config/terminator/config"

--------------------------------------------------------------------

[README](../README.md)
1. [Konfiguration](./configuration.md)
2. [Installation](./install.md)
3. [Verwendung](./operation.md)
4. [OPC-UA Server](./opc_ua.md)
5. [Details der einzelnen Trainings](./statemachines.md)
6. [LEDs](./led.md)
