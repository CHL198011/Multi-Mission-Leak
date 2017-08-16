/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop","_val"];
_shop = _this select 0;
if ( vehicle player != player ) exitWith {hint "Du kannst nicht aus dem Auto heraus verkaufen."; closeDialog 0;};
switch (_shop) do
{
	case "market": {["Altis Markt",["water","bier","rabbit","apple","redgull","tbacon","doner","pickaxe","fuelF","peach","storagebig","henraw","roosterraw","schnaps","goatraw","sheepraw","rabbitraw","wolfraw","wolf1raw"]]};
	case "medicmarket": {["ARS Markt",["water","bier","rabbit","apple","pille","redgull","tbacon","doner","lockpick","pickaxe","fuelF","peach","mauer","sperre","lampe","dixi","tisch","generator","matratze","zelt","kidney"]]};
	case "rebelmarket": {["Rebellen Markt",["water","bier","rabbit","apple","redgull","tbacon","doner","schnaps","lockpick","storagebig","pickaxe","fuelF","scalpel","peach","geld","boltcutter","blastingcharge","henraw","roosterraw","goatraw","sheepraw","rabbitraw","wolfraw","wolf1raw"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "organ": {["Organ Dealer",["kidney"]]};
	case "gang": {["Gang Market", ["water","bier","rabbit","apple","redgull","tbacon","doner","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drogen Dealer",["cocainep","heroinp","methp","marijuana","frogp","badcocaine","krokodile"]]};
	case "oil": {["�l H�ndler",["oilp"]]};
	case "fishmarket": {["Altis Fisch Markt",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glas H�ndler",["glass"]]};
	case "iron": {["Edelmetall H�ndler",["iron_r","copper_r","goldp"]]};
	case "diamond": {["Diamant H�ndler",["diamond","diamondc"]]};
	case "salt": {["Salz H�ndler",["salt_r"]]};
	case "adminmarket": {["Admin Markt",["donuts","coffee","spikeStrip","water","rabbit","apple","lockpick","doner","redgull","fuelF","scalpel","defusekit","lampe","sperre","mauer","wand","schranke","dixi","tisch","generator","matratze","zelt","geld","boltcutter","blastingcharge","storagesmall","storagebig","kidney"]]};
	case "cop": {["Polizei Markt",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","lampe","sperre","mauer","wand","schranke","tisch","kidney"]]};
	case "cement": {["Zement H�ndler",["cement"]]};
	case "admin1": {["Admin Markt",["water","bier","rabbit","apple","redgull","tbacon","doner","lockpick","pickaxe","fuelF","peach","donuts","coffee","spikeStrip","boltcutter","blastingcharge","storagebig","defusekit"]]};
	case "muschel": {["perlen H�ndler",["muschelu","muschelp"]]};
	case "silber": {["Silber H�ndler",["silberu","silberp"]]};
	case "pils": {["Bier H�ndler",["pilsu","pilsp"]]};
	case "brennstab": {["Uran H�ndler",["brennstabp"]]};
    case "schmuck": {["Schmuck H�ndler",["schmuck"]]};
	case "atomwaffe": {["Uran Munitions H�ndler",["atomwaffe"]]};
	case "kerosin": {["Kerosin H�ndler",["kerosin"]]};
    case "gold": {["Gold Buyer",["goldbar"]]};
	case "bleiglas": {["Blei-Glas H�ndler",["bleigp"]]};
	case "radioaktiv": {["Atom H�ndler",["radioaktivp"]]};
	case "legierung": {["Legierungsbestandteil H�ndler",["bleilp"]]};
};