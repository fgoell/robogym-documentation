# OPC-UA Server
## Struktur der Server
Die OPC-UA Server sind für das OPC-TCP Protokoll konfiguriert und über die Ports 4840 (normal/GUI) und 9680 (realtime) erreichbar.
<details>
<summary markdown="span">Node Struktur von „BEC RoboGym“ </summary>

```
„BEC RoboGym“
	└ Root
		├ Objects
		│	├ „BEC RoboGym“
		│	│	└ […]
		│	├ „RoboGymMethodNodes“
		│	│	├ „Interpolate Trajectory“
		│	│	├ „Change Mode“
		│	│	├ „Change Mode Skalar“
		│	│	├ „Capture Trajectory Points“
		│	│	├ „Capture Trajectory Points Skalar“
		│	│	├ „Choose force test position“
		│	│	├ „Choose force test position Skalar“
		│	│	└ „Calibrate FT-Sensor“
		│	└ „RoboGymVariableNodes“
		│		├ „anatomy_moments“
		│		├ „anatomy_positions“
		│		├ „application_status“
		│		├ „connection_mode“
		│		├ „emergency_stops“
		│		├ „endeffektor“
		│		├ „f_max“
		│		├ „f_min“
		│		├ „f_target“
		│		├ „f_target_backwards“
		│		├ „force“
		│		├ „force_test_position“
		│		├ „force_thresholds“
		│		├ „modus“
		│		├ „robot_axis“
		│		├ „robot_position“
		│		├ „robot_status“
		│		├ „safety_zones_active“
		│		├ „state“
		│		├ „training_intensity“
		│		├ „training_set_remainder“
		│		├ „training_sets“
		│		├ „trajectory“
		│		├ „v_max“
		│		├ „v_target“
		│		└ „velocity“
		├ Types
		│	└ […]
		└ Views
```
</details>

<details>
<summary markdown="span">Node Struktur von „BEC RoboGym – Realtime Channel“ </summary>

```
„BEC RoboGym – Realtime Channel“
	└ Root
		├ Objects
		│	├ „BEC RoboGym – Realtime Channel“
		│	│	└ […]
		│	└ „RoboGymVariableNodes“
		│		├ „anatomy_moments“
		│		├ „anatomy_positions“
		│		├ „angle_correction“
		│		├ „force“
		│		├ „robot_axis“
		│		├ „robot_position“
		│		└ „training_intensity“
		├ Types
		│	└ […]
		└ Views
```
</details>

## Object Nodes
### Normal/GUI Server (Port 4840)
<details>
<summary markdown="span">Servernode </summary>

| UPC-UA Server: 			|				|
| ------------------------- | ------------- |
| BrowseName				| „BEC RoboGym“	|
| DisplayName				| „BEC RoboGym“	|
| NodeClass					| Object		|
| NodeId – NameSpaceIndex	| 0				|
| NodeId – Identifier		| 2253			|
| NodeId – IdentifierType	| Numeric		|

</details>

<details>
<summary markdown="span">Containernode für Method Nodes </summary>

| Object Node: 	 			|						|
| ------------------------- | --------------------- |
| BrowseName				| „RoboGymMethodNodes“	|
| DisplayName				| „RoboGymMethodNodes“	|
| NodeClass					| Object				|
| NodeId - NameSpaceIndex	| 1						|
| NodeId – Identifier		| robo_gym_method_nodes	|
| NodeId – IdentifierType	| String				|

</details>

<details>
<summary markdown="span">Containernode für Variable Nodes </summary>

| Object Node: 	 			|							|
| ------------------------- | ------------------------- |
| BrowseName				| „RoboGymVariableNodes“	|
| DisplayName				| „RoboGymVariableNodes“	|
| NodeClass					| Object					|
| NodeId - NameSpaceIndex	| 1							|
| NodeId – Identifier		| robo_gym_variable_nodes	|
| NodeId – IdentifierType	| String					|

</details>

### Realtime Server (Port 9680)
<details>
<summary markdown="span">Servernode </summary>

| UPC-UA Server: 			|									|
| ------------------------- | --------------------------------- |
| BrowseName				| „BEC RoboGym – Realtime Channel“	|
| DisplayName				| „BEC RoboGym – Realtime Channel“	|
| NodeClass					| Object							|
| NodeId – NameSpaceIndex	| 0									|
| NodeId – Identifier		| 2253								|
| NodeId – IdentifierType	| Numeric							|

</details>

<details>
<summary markdown="span">Containernode für Variable Nodes </summary>

| Object Node: 	 			|							|
| ------------------------- | ------------------------- |
| BrowseName				| „RoboGymVariableNodes“	|
| DisplayName				| „RoboGymVariableNodes“	|
| NodeClass					| Object					|
| NodeId - NameSpaceIndex	| 1							|
| NodeId – Identifier		| robo_gym_variable_nodes	|
| NodeId – IdentifierType	| String					|

</details>

## Variable Nodes
Alle Verwendeten Variable Nodes sind im NameSpaceIndex „1“ mit String-Identifier unter der Object-Node „RoboGymNodes“ angelegt. Der BrowseName, DisplayName und der Identifiert (Typ String) sind bei allen Variable Nodes identisch.

### Normal/GUI Server (Port 4840)
Hierbei haben die Arrays „force“, „force_test_position“, „force_thresholds“ und „robot_position“ jeweils 6 Parameter (3 für die Raumrichtung und 3 für die Winkel), das Array „robot_axis“ insgesamt 6 Parameter (einen für jede Roboterachse), das Array „velocity“ 3 Parameter (für die Raumrichtungen), die Arrays „training_sets“ und „training_set_remainder“ jeweils 3 Parameter (einen für Wiederholungen, Sets und Pause) und das Arrays „trajectory“ hat 60 Parameter (10 Punkte mit je 6 Koordinaten).

Zur besseren Übersicht wurden alle Nodes einmal komplett und einmal ohne die NodeClass (hier immer „Variable“), den NameSpaceIndex (hier immer „1“) und den IdentifierType (hier immer „String“):

<details>
<summary markdown="span">Kompakte Übersicht der Variable Nodes </summary>

| BrowseName, DisplayName, Identifier	| DataType	| ValueRank	|
| ------------------------------------- | --------- | --------- |
| „anatomy_moments“						| Float		| 2 		|
| „anatomy_positions“					| Float		| 2 		|
| „application_status“					| Byte		| -1		|
| „connection_mode“						| String	| -1		|
| „emergency_stops“						| Byte		| -1		|
| „endeffektor“							| Int16		| -1		|
| „f_max“								| Float		| -1		|
| „f_min“								| Float		| -1		|
| „f_target“							| Float		| -1		|
| „f_target_backwards“					| Float		| -1		|
| „force“								| Float		| 1			|
| „force_test_position“					| Float		| 1			|
| „force_thresholds“					| Float		| 1			|
| „modus“								| SByte		| -1		|
| „robot_axis“							| Float		| 1			|
| „robot_position“						| Float		| 1			|
| „robot_status“						| Byte		| -1		|
| „safety_zones_active“					| Byte		| -1 		|
| „state“								| Byte		| -1 		|
| „training_intensity“					| Float		| -1 		|
| „training_set_remainder“				| Int16		| 1			|
| „training_sets“						| Int16		| 1			|
| „trajectory“							| Float		| 2			|
| „v_max“								| Float		| -1		|
| „v_target“							| Float		| -1		|
| „velocity“							| Float		| 1			|

</details>

<details>
<summary markdown="span">Detailierte Übersicht der Variable Nodes </summary>

| BrowseName, DisplayName, Identifier	| NodeClass	| NameSpace Index	| IdentifierType	| DataType	| ValueRank			|
| ------------------------------------- | --------- | ----------------- | ----------------- | --------- | ----------------- |
| „anatomy_moments“						| Variable	| 1					| String			| Float		| 2 (TwoDimensions)	|
| „anatomy_positions“					| Variable	| 1					| String			| Float		| 2 (TwoDimensions)	|
| „application_status“					| Variable	| 1					| String			| Byte		| -1 (Scalar)		|
| „connection_mode“						| Variable	| 1					| String			| String	| -1 (Scalar)		|
| „emergency_stops“						| Variable	| 1					| String			| Byte		| -1 (Scalar)		|
| „endeffektor“							| Variable	| 1					| String			| Int16		| -1 (Scalar)		|
| „f_max“								| Variable	| 1					| String			| Float		| -1 (Scalar)		|
| „f_min“								| Variable	| 1					| String			| Float		| -1 (Scalar)		|
| „f_target“							| Variable	| 1					| String			| Float		| -1 (Scalar)		|
| „f_target_backwards“					| Variable	| 1					| String			| Float		| -1 (Scalar)		|
| „force“								| Variable	| 1					| String			| Float		| 1 (OneDimension)	|
| „force_test_position“					| Variable	| 1					| String			| Float		| 1 (OneDimension)	|
| „force_thresholds“					| Variable	| 1					| String			| Float		| 1 (OneDimension)	|
| „modus“								| Variable	| 1					| String			| SByte		| -1 (Scalar)		|
| „robot_axis“							| Variable	| 1					| String			| Float		| 1 (OneDimension)	|
| „robot_position“						| Variable	| 1					| String			| Float		| 1 (OneDimension)	|
| „robot_status“						| Variable	| 1					| String			| Byte		| -1 (Scalar)		|
| „safety_zones_active“					| Variable	| 1					| String			| Byte		| -1 (Scalar)		|
| „state“								| Variable	| 1					| String			| Byte		| -1 (Scalar)		|
| „training_intensity“					| Variable	| 1					| String			| Float		| -1 (Scalar)		|
| „training_set_remainder“				| Variable	| 1					| String			| Int16		| 1 (OneDimension)	|
| „training_sets“						| Variable	| 1					| String			| Int16		| 1 (OneDimension)	|
| „trajectory“							| Variable	| 1					| String			| Float		| 2 (TwoDimensions)	|
| „v_max“								| Variable	| 1					| String			| Float		| -1 (Scalar)		|
| „v_target“							| Variable	| 1					| String			| Float		| -1 (Scalar)		|
| „velocity“							| Variable	| 1					| String			| Float		| 1 (OneDimension)	|

</details>

### Realtime Server (Port 9680)
Hierbei haben die Arrays „force“ und „robot_position“ jeweils 6 Parameter (3 für die Raumrichtung und 3 für die Winkel), das Array „robot_axis“ insgesamt 6 Parameter (einen für jede Roboterachse), das Array „angle_correction“ hat 3 Parameter (einen für jeden Winkel), das Array „anatomy_moments“ hat 4 Parameter und das Array „anatomy_positions“ hat 18 Werte (3 Punkte mit je 6 Koordinaten).

Zur besseren Übersicht nochmals alle Nodes ohne die NodeClass (hier immer „Variable“), den NameSpaceIndex (hier immer „1“) und den IdentifierType (hier immer „String“):

<details>
<summary markdown="span">Kompakte Übersicht der Variable Nodes </summary>

| BrowseName, DisplayName, Identifier	| DataType	| ValueRank	|
| ------------------------------------- | --------- | --------- |
| „anatomy_moments“						| Float		| 1			|
| „anatomy_positions“					| Float		| 2			|
| „angle_correction“					| Float		| 1			|
| „force“								| Float		| 1			|
| „robot_axis“							| Float		| 1			|
| „robot_position“						| Float		| 1			|
| „training_intensity“					| Float		| -1		|

</details>

<details>
<summary markdown="span">Detailierte Übersicht der Variable Nodes </summary>

| BrowseName, DisplayName, Identifier	| NodeClass	| NameSpace Index	| IdentifierType	| DataType	| ValueRank			|
| ------------------------------------- | --------- | ----------------- | ----------------- | --------- | ----------------- |
| „anatomy_moments“						| Variable	| 1					| String			| Byte		| 1 (OneDimension)	|
| „anatomy_positions“					| Variable	| 1					| String			| String	| 2 (TwoDimensions)	|
| „angle_correction“					| Variable	| 1					| String			| Byte		| 1 (OneDimension)	|
| „force“								| Variable	| 1					| String			| Float		| 1 (OneDimension)	|
| „robot_axis“							| Variable	| 1					| String			| Float		| 1 (OneDimension)	|
| „robot_position“						| Variable	| 1					| String			| Float		| 1 (OneDimension)	|
| „training_intensity“					| Variable	| 1					| String			| Float		| -1 (Scalar)		|

</details>


## Method Nodes

### Normal/GUI Server (Port 4840)
Alle Method-Nodes auf dem Server zum aufklappen:
<details>
<summary markdown="span">„Interpolate Trajectory“ </summary>

| Method Node: 	 			|							|
| ------------------------- | ------------------------- |
| BrowseName				| „Interpolate Trajectory“	|
| DisplayName				| „Interpolate Trajectory“	|
| Description				| Interpolate the Trajectory from given points.	|					|
| NodeClass					| Method					|
| NodeId - NameSpaceIndex	| 1							|
| NodeId – Identifier		| trajectory_interpolate	|
| NodeId – IdentifierType	| String					|

| Input Arguments	|					|
| ----------------- | ----------------- |
| DataType			| Byte				|
| ArrayDimensions	| 3					|
| ValueRank			| 1 (OneDimension)	|
| Description		| Commands for the interpolation of a trajectory in the format: \[Type\|Start\|End\] |

| Input				|		|
| ----------------- | ----- |
| \[1, start, end\]	| Lineare Trajectory beginnend bei start-\% und endend bei end-\% zwischen den aufgenommenen Punkten. |
| \[2, start, end\]	| Viertel-Ellipse von start-° bis end-° innerhalb der Ellipse, die durch die aufgenommenen Punkte definiert wird. |
| \[3, -, -\]		| *Experimental* Beliebige Trajektorie, die durch die Multi-Point-Aufnahme deklariert wurde. |
| \[4, -, -\]		| *Experimental* Viertel-Ellipse, die durch die Mulit-Point-Aufnahme definiert wurde. |

</details>

<details>
<summary markdown="span">„Change Mode“ </summary>

| Method Node: 	 			|							|
| ------------------------- | ------------------------- |
| BrowseName				| „Change Mode“				|
| DisplayName				| „Change Mode“				|
| Description				| Change Mode of the RoboGym	|
| NodeClass					| Method					|
| NodeId - NameSpaceIndex	| 1							|
| NodeId – Identifier		| change_mode				|
| NodeId – IdentifierType	| String					|

| Input Arguments	|					|
| ----------------- | ----------------- |
| DataType			| Byte				|
| ArrayDimensions	| 1					|
| ValueRank			| 1 (OneDimension)	|
| Description		| Start a Workflow	|

| Input		|															|
| --------: | --------------------------------------------------------- |
| \[50\]	| Trajectory Teaching										|
| \[90\]	| Force test												|
| \[100\]	| Leg Press Isokinematic									|
| \[101\]	| Leg Press Isotonic										|
| \[120\]	| Rowing Isokinematic										|
| \[121\]	| Rowing Isotonic											|
| \[140\]	| Knee Extension Isokinematic								|
| \[141\]	| Knee Extension Isotonic									|
| \[142\]	| *Experimental* Knee Extension Isokinematic flexed Start	|
| \[143\]	| *Experimental* Knee Extension Isotonic flexed Start		|
| \[200\]	| Force finish current training.							|
| \[201\]	| Move to home position. 									|
| \[255\]	| Reset Exacontrol system 									|


</details>

<details>
<summary markdown="span">„Change Mode Skalar“ </summary>

| Method Node: 	 			|							|
| ------------------------- | ------------------------- |
| BrowseName				| „Change Mode“				|
| DisplayName				| „Change Mode“				|
| Description				| Change Mode of the RoboGym	|
| NodeClass					| Method					|
| NodeId - NameSpaceIndex	| 1							|
| NodeId – Identifier		| change_mode_scalar		|
| NodeId – IdentifierType	| String					|

| Input Arguments	|					|
| ----------------- | ----------------- |
| DataType			| Byte				|
| ArrayDimensions	| -					|
| ValueRank			| 1 (OneDimension)	|
| Description		| Start a Workflow	|

| Input	|															|
| ----: | --------------------------------------------------------- |
| 50	| Trajectory Teaching										|
| 90	| Force test												|
| 100	| Leg Press Isokinematic									|
| 101	| Leg Press Isotonic										|
| 120	| Rowing Isokinematic										|
| 121	| Rowing Isotonic											|
| 140	| Knee Extension Isokinematic								|
| 141	| Knee Extension Isotonic									|
| 142	| *Experimental* Knee Extension Isokinematic flexed Start	|
| 143	| *Experimental* Knee Extension Isotonic flexed Start		|
| 200	| Force finish current training.							|
| 201	| Move to home position. 									|
| 255	| Reset Exacontrol system 									|

</details>

<details>
<summary markdown="span">„Capture Trajectory Points“ </summary>

| Method Node: 	 			|								|
| ------------------------- | ----------------------------- |
| BrowseName				| „Capture Trajectory Points“	|
| DisplayName				| „Capture Trajectory Points“	|
| Description				| Capture points for the trajectory.	|
| NodeClass					| Method						|
| NodeId - NameSpaceIndex	| 1								|
| NodeId – Identifier		| trajectory_capture			|
| NodeId – IdentifierType	| String						|

| Input Arguments	|					|
| ----------------- | ----------------- |
| DataType			| Byte				|
| ArrayDimensions	| 1					|
| ValueRank			| 1 (OneDimension)	|
| Description		| Commands for the capture of trajectory points.	|

| Input	|		|
| ----- | ----- |
| \[1\]	| Startposition aufnehmen.  |
| \[2\]	| Endpositions aufnehmen. |
| \[3\]	| *Experimental* Punkt zur Mulitpoint-Aufnahme hinzufügen. |
| \[4\]	| Aufnahme resetten. (Wichtig für Multipoint-Aufnahme, irrelevant für den normalen Modus.) |

</details>

<details>
<summary markdown="span">„Capture Trajectory Points Skalar“ </summary>

| Method Node: 	 			|										|
| ------------------------- | ------------------------------------- |
| BrowseName				| „Capture Trajectory Points Skalar“	|
| DisplayName				| „Capture Trajectory Points Skalar“	|
| Description				| Capture points for the trajectory.	|
| NodeClass					| Method								|
| NodeId - NameSpaceIndex	| 1										|
| NodeId – Identifier		| trajectory_capture_scalar				|
| NodeId – IdentifierType	| String								|

| Input Arguments	|					|
| ----------------- | ----------------- |
| DataType			| Byte				|
| ArrayDimensions	| -					|
| ValueRank			| 1 (OneDimension)	|
| Description		| Commands for the capture of trajectory points.	|

| Input	|		|
| ----- | ----- |
| 1		| Startposition aufnehmen.  |
| 2		| Endpositions aufnehmen. |
| 3		| *Experimental* Punkt zur Mulitpoint-Aufnahme hinzufügen. |
| 4		| Aufnahme resetten. (Wichtig für Multipoint-Aufnahme, irrelevant für den normalen Modus.) |

</details>

<details>
<summary markdown="span">„Choose force test position“ </summary>

| Method Node: 	 			|										|
| ------------------------- | ------------------------------------- |
| BrowseName				| „Choose force test position“			|
| DisplayName				| „Choose force test position“			|
| Description				| Choose which position is used for the force test.	|
| NodeClass					| Method								|
| NodeId - NameSpaceIndex	| 1										|
| NodeId – Identifier		| force_test_choose_position			|
| NodeId – IdentifierType	| String								|

| Input Arguments	|					|
| ----------------- | ----------------- |
| DataType			| Byte				|
| ArrayDimensions	| 1					|
| ValueRank			| 1 (OneDimension)	|
| Description		| Commands for which position to use for the force test.	|

| Input	|		|
| ----- | ----- |
| \[1\]	| Fahre einen neuen Punkt mit dem Teach-Modus an.  |
| \[2\]	| Fahre den gespeicherten Punkt der Node „force_test_position“ an. |
| \[3\]	| Speichere den aktuellen Punkt in der Node „force_test_position“. |

</details>

<details>
<summary markdown="span">„Choose force test position Skalar“ </summary>

| Method Node: 	 			|										|
| ------------------------- | ------------------------------------- |
| BrowseName				| „Choose force test position Skalar“	|
| DisplayName				| „Choose force test position Skalar“	|
| Description				| Choose which position is used for the force test.	|
| NodeClass					| Method								|
| NodeId - NameSpaceIndex	| 1										|
| NodeId – Identifier		| force_test_choose_position_scalar		|
| NodeId – IdentifierType	| String								|

| Input Arguments	|					|
| ----------------- | ----------------- |
| DataType			| Byte				|
| ArrayDimensions	| 0					|
| ValueRank			| 1 (OneDimension)	|
| Description		| Commands for which position to use for the force test.	|

| Input	|		|
| ----- | ----- |
| \[1\]	| Fahre einen neuen Punkt mit dem Teach-Modus an.  |
| \[2\]	| Fahre den gespeicherten Punkt der Node „force_test_position“ an. |
| \[3\]	| Speichere den aktuellen Punkt in der Node „force_test_position“. |

</details>

<details>
<summary markdown="span">„Calibrate FT-Sensor“ </summary>

| Method Node: 	 			|						|
| ------------------------- | --------------------- |
| BrowseName				| „Calibrate FT-Sensor“	|
| DisplayName				| „Calibrate FT-Sensor“	|
| Description				| Set the current force and torque as zero on the FT-Sensor. 	|
| NodeClass					| Method				|
| NodeId - NameSpaceIndex	| 1						|
| NodeId – Identifier		| calibrate_ft_sensor	|
| NodeId – IdentifierType	| String				|

| Input Arguments	|		|
| ----------------- | ----- |
| DataType			| -		|
| ArrayDimensions	| -		|
| ValueRank			| -		|
| Description		| -		|

</details>

### Realtime Server (Port 9680)
Zum aktuellen Zeitpunkt gibt es hier keine Method-Nodes.

## Flags und Codes
Für die Codierung des Status des Systems werden folgende Werte verwendet. Hierbei wird immer zuerst die Verwendete Node und deren Datentyp aufgelistet und darunter die Flags als Binärzahl, bzw. die Codes für den Anwendungsmodus als Dezimalzahl. Die Bezeichnung der Flags orientiert sich hierbei an deren Benennung im C++-Code.

<details>
<summary markdown="span">Application Status </summary>

| Application Status							| Byte				|
| --------------------------------------------- | ----------------- |
| Status::Programm::READY						| ``0b00000001``	|
| Status::Programm::APP_RUNNING					| ``0b00000010``	|
| *Status::Programm::unused*					| ``0b00000100``	|
| Status::Programm::ERROR						| ``0b00001000``	|
| Status::Programm::NOT_CONNECTED				| ``0b00010000``	|
| Status::Programm::CORE_NOT_READY				| ``0b00100000``	|
| Status::Programm::ROBOT_MODULE_NOT_READY		| ``0b01000000``	|
| Status::Programm::FIELDBUS_MODULE_NOT_READY	| ``0b10000000``	|

</details>

<details>
<summary markdown="span">Emergency Stops </summary>

| Emergency Stops					| Byte				|
| --------------------------------- | ----------------- |
| Status::EmergencyStops::OVERALL	| ``0b00000001``	|
| Status::EmergencyStops::KUKA		| ``0b00000010``	|
| Status::EmergencyStops::EXTERNAL	| ``0b00000100``	|
| Status::EmergencyStops::Safety	| ``0b00001000``	|
| *Status::EmergencyStops::unused*	| ``0b00010000``	|
| *Status::EmergencyStops::unused*	| ``0b00100000``	|
| *Status::EmergencyStops::unused*	| ``0b00100000``	|
| *Status::EmergencyStops::unused*	| ``0b10000000``	|

</details>

<details>
<summary markdown="span">Robot Status </summary>

| Robot Status						| Byte				|
| --------------------------------- | ----------------- |
| Status::Robot::CALIBRATION_NEEDED	| ``0b00000001``	|
| Status::Robot::REFERENCE_NEEDED	| ``0b00000010``	|
| Status::Robot::BRAKETEST_NEEDED	| ``0b00000100``	|
| *Status::Robot::unused*			| ``0b00001000``	|
| Status::Robot::TEACHING_ACTIVE	| ``0b00010000``	|
| Status::Robot::MOVING				| ``0b00100000``	|
| Status::Robot::IN_HOME			| ``0b01000000``	|
| *Status::Robot::unused*			| ``0b10000000``	|

</details>

<details>
<summary markdown="span">Endeffektor/Tool </summary>

| Endeffektor		| Integer	|
| ----------------- | --------: |
| unknown			| ``0``		|
| Knie-Extension	| ``1``		|
| Beinpresse		| ``2``		|
| Rudern			| ``3``		|

</details>

<details>
<summary markdown="span">Safety Zones </summary>

| Safety Zones							| Byte			|
| ------------------------------------- | ------------- |
| Status::SafetyZones::ZONE_1			| ``0b00000001``	|
| Status::SafetyZones::ZONE_2			| ``0b00000010``	|
| Status::SafetyZones::ZONE_3			| ``0b00000100``	|
| Status::SafetyZones::ZONE_4			| ``0b00001000``	|
| Status::SafetyZones::ZONE_5			| ``0b00010000``	|
| Status::SafetyZones::TEACHING_ACTIVE	| ``0b00100000``	|
| *Status::SafetyZones::unused*			| ``0b01000000``	|
| *Status::SafetyZones::unused*			| ``0b10000000``	|

</details>

<details>
<summary markdown="span">Modus </summary>

| Modus												| Byte		|
| ------------------------------------------------- | --------: |
| TrainingState::init								| ``0``		|
| TrainingState::trajectory_teaching				| ``50``	|
| TrainingState::fitness_test_force					| ``90``	|
| TrainingState::isokinematic_leg_press				| ``100``	|
| TrainingState::isotonic_leg_press					| ``101``	|
| TrainingState::isokinematic_rowing				| ``120``	|
| TrainingState::isotonic_rowing					| ``121``	|
| TrainingState::isokinematic_knee_extension		| ``140``	|
| TrainingState::isotonic_knee_extension			| ``141``	|
| TrainingState::isokinematic_knee_extension_flexed	| ``142``	|
| TrainingState::isotonic_knee_extension_flexed		| ``143``	|
| TrainingState::go_to_home							| ``201``	|
| TrainingState::reset								| ``255``	|

</details>

<details>
<summary markdown="span">Training States </summary>

| Modus												| Byte		|
| ------------------------------------------------- | --------: |
| TrainingState::init								| ``0``		|
| TrainingState::trajectory_teaching				| ``50``	|
| TrainingState::fitness_test_force					| ``90``	|
| TrainingState::isokinematic_leg_press				| ``100``	|
| TrainingState::isotonic_leg_press					| ``101``	|
| TrainingState::isokinematic_rowing				| ``120``	|
| TrainingState::isotonic_rowing					| ``121``	|
| TrainingState::isokinematic_knee_extension		| ``140``	|
| TrainingState::isotonic_knee_extension			| ``141``	|
| TrainingState::isokinematic_knee_extension_flexed	| ``142``	|
| TrainingState::isotonic_knee_extension_flexed		| ``143``	|
| TrainingState::go_to_home							| ``201``	|
| TrainingState::reset								| ``255``	|

</details>

--------------------------------------------------------------------

[README](../README.md)
1. [Konfiguration](./configuration.md)
2. [Installation](./install.md)
3. [Verwendung](./operation.md)
4. [OPC-UA Server](./opc_ua.md)
5. [Details der einzelnen Trainings](./statemachines.md)
6. [LEDs](./led.md)
