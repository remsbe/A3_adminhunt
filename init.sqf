if(isDedicated)exitWith{}; //(remove this line if already present) Everything below this line is only executed on the client (player or local host) (remove this line if already present)
//
//...
//...
//

"GlobalAdminHint" addPublicVariableEventHandler { 
	hint parseText format["%1", (_this select 1) select 0]
};

[] spawn {	
	waitUntil{vehicle player == player && time > 5};
	[] execVM "scripts\add_action_menu.sqf";
};	
