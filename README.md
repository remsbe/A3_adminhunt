
# adminhunt
Hunting the admin for arma 3 epoch

Install Insctructions, 

Copy what is in the init.sqf and paste in to yours or if you don't have one put it in your epoch.map.pbo

Copy the scripts folder into the root directory of your epoch.map.pbo

BE filters : 

SCRIPTS.TXT
At line 22 (7 exec...) add : 

	!="execVM \"scripts\adminhunt.sqf\"" !="execVM \"scripts\add_action_menu.sqf\"" 
	
At line 32 (7 removeAllActions...) add :

	!="removeAllActions player"

At line 42 (7 deleteMarker...) add : 

	!="deleteMarker _Marker"

At line 43 (7 setMarker...) add :

	!="_Marker setMarkerColor \"ColorGreen\"" !="_Marker setMarkerShape \"ICON\"" !="_Marker setMarkerType \"o_inf\"" !="_Marker setMarkerSize [1,1]" !="_Marker setMarkerPos (getPos player)"

PUBLICVARIABLE.TXT
At line 1 (5 "" ...) add : 

	!="GlobalAdminHint"
	
Maybe you'll need to adapt BE filters to your environment.