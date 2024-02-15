scriptName "fn_uniformFix";

_mags = uniformMagazines ACE_playerplayer; 
_items = uniformItems ACE_player;
ACE_player forceaddUniform (uniform ACE_player);

{
	ACE_player addItemToUniform _x
} forEach _items;

{
	ACE_player addMagazine _x
} forEach _mags;