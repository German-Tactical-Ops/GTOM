scriptName "fn_uniformFix";

_mags = uniformMagazines ACE_player; 
_items = uniformItems ACE_player;
ACE_player forceaddUniform (uniform ACE_player);

{
	ACE_player addItemToUniform _x
} forEach _items;

{
	ACE_player addMagazine _x
} forEach _mags;