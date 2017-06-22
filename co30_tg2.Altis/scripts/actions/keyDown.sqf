params ["_handled", "_key"];
_handled = false;
if (player getVariable ["inconsciente",false]) exitWith {_handled};
if (player getVariable ["owner",player] != player) exitWith {_handled};
if (_key == 207) then {
	if (soundVolume <= 0.5) then {
		0.5 fadeSound 1;
		hintSilent "Вы достали беруши.";
	} else {
		0.5 fadeSound 0.1;
		hintSilent "Вы вставили беруши.";
	};
} else {
	if (_key == 207) then {
		0.5 fadeSound 0.1;
		hintSilent "Вы взяли беруши.";
	};
	if (_key == 199) then {
		0.5 fadeSound 1;
		hintSilent "Вы достали беруши.";
	};
};

_handled