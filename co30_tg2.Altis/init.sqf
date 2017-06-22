[] spawn {
	disableSerialization;
	waitUntil {!isNull(findDisplay 46)};
	(findDisplay 46) displayAddEventHandler ["keyDown", "_this call compile preprocessFileLineNumbers 'scripts\actions\keyDown.sqf'"];
};
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;