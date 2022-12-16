# RoboGym - Workflow
## 1 Allgemein
- Jeder Step hat ein "Zurück", ein "Weiter" und ein "Home" button.
- Das ist im UML oft, aber nicht immer angegeben.
- Einige Steps sollen mit einfachen Grafiken erklären, was gemacht wird.

## 2 Details zu den Steps
### 2.1 Anmeldung
- Standardtrainer anlegen für diesen soll der normale Workflow gelten.
- Standardtrainer hat eingeschränkte Möglichkeiten, die Werte zu verändern. (Höhere Userexperience und Usability)
- Profitrainer/Forscher hat größere Auswahl an Parametern zum einstellen.
- Profitrainer/Forscher bekommt weniger Bilderbuch erklärung.
- Die anderen Punkte sind für den Standardtrainer gedacht.

### 2.2 Daily test
- Soll in GUI abgehakt/angezeigt werden.
- Ist theoretisch über den Feldbus für das System erkennbar.
- Muss noch in den OPC-UA Server eingebaut werden, damit die GUI das auch richtig erkennt.
- In der Variable Applikation Status ist noch ein Bit frei, das ich dafür nutzen kann.

### 2.3 Sportlerdaten (aktuell)
- Vorname
- Nachname
- Geburtsdatum
- Größe
- Geschlecht
- Trainings-Historie

### 2.4 Neuen Sportler anlegen
- DB mit default Werten für die Trainings befüllen
- Default Werte sollen so gewählt werden, dass sie keine Gefahr darstellen.
	- Trajektorie kurz und weg vom Stuhl.
	- Kraftgrenzen für den Teach Modus so hoch, dass keine Bewegung ohne Änderung der Parameter möglich ist.
	- Kraftwerte für Trainings so hoch, dass sie nicht erreicht werden können.

### 2.5 Gerät auswählen
- Geschieht über die Hardware am Roboter. (Aktuell noch Stecker)
- GUI soll lediglich eine Bestätigung der aktuellen Konfiguration forcieren.

### 2.6 Teachmodus
- Trennung Teach modus nach "nur default Werte vorhanden" und "vorherige Werte aus DB laden"
- Default Werte für Start- und Endpose aus der Trajektorie verwenden

#### 2.6.1 nur Default Werte vorhanden
- Es werden hohe Werte als Default eingetragen, die eine Bewegung in alle Richtung blocken.
- Man kann nacheinander die einzelnen Parameter frei schalten und auf die gewollten Werte einstellen.
- Sinnvolle Bereiche für die Werte müssen vorgegeben werden.
- Default Trajektorie

#### 2.6.2 vorherige Werte in DB vorhanden
- vorhandene Werde laden
- Geführte Einstellung der Parameter überspringen
