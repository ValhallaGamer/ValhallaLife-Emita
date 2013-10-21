private["_display","__btnRespawn","_btnAbort"];
disableSerialization;
waitUntil {
	_display = findDisplay 49;
	!isNull _display;
};
_btnRespawn = _display displayCtrl 1010;
_btnAbort = _display displayCtrl 104;
_btnRespawn ctrlEnable true;
_btnAbort ctrlEnable true;