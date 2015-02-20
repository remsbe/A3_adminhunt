waitUntil{!isNull (findDisplay 46)};

//Add action menu for admin (replace xxxxxxxxxxxxxx with your ID)
if ((getPlayerUID player) in ["xxxxxxxxxxxxxx","xxxxxxxxxxxxxx","xxxxxxxxxxxxxx","xxxxxxxxxxxxxx"]) then {
	systemChat "Adding action menu...";
	removeAllActions player;
   
	waitUntil {!isNull player};
	while {true} do {
	   waitUntil {sleep 1.5; alive player};
		player addaction ["Admin Hunt", "scripts\adminhunt.sqf","",5,false,true,"",""];
	   waitUntil {sleep 1.5; !alive player};
	};
};