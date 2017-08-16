/*
	Author: Shawn "Huntah" Macgillivray
	
	Description:
	Returns the players quest reward information
*/

private ["_return","_curQuest"];

_return = [];
switch(_this select 0)do
	{
	case 0:{_curQuest = (DS_infoArray select 13)};
	case 1:{_curQuest = (DS_infoArray select 15)};
	case 2:{_curQuest = (DS_infoArray select 17)};
	case 3:
		{
		if(playerside == west)then
			{
			_curQuest = (DS_infoArray select 21);
			};
		if(player getVariable ["security",false])then
			{
			_curQuest = (DS_infoArray select 19);
			};
		if(player getVariable ["mechanic",false])then
			{
			_curQuest = (DS_infoArray select 23);
			};
		if(player getVariable ["medic",false])then
			{
			_curQuest = (DS_infoArray select 10);
			};
		};
	};		
switch(_this select 0)do
	{
	case 0:
		{
		switch(_curQuest)do
			{
			case 0:
				{
				_return =
				["Apple Picker",0,2000];
				};
			case 1:
				{
				_return =
				["Peach Picker",0,2000];
				};
			case 2:
				{
				_return =
				["Fishing Net",0,5000];
				};
			case 3:
				{
				_return =
				["Dive Fishing",0,5000];
				};
			case 4:
				{
				_return =
				["PickAxe",1,"30% faster PickAxe usage"];
				};
			case 5:
				{
				_return =
				["Public Transport",0,5000];
				};
			case 6:
				{
				_return =
				["Banking Insurance",0,5000];
				};
			case 7:
				{
				_return =
				["Factory",0,10000];
				};
			case 8:
				{
				_return =
				["Get Treated",0,10000];
				};
			case 9:
				{
				_return =
				["Fuel Deliveries",2,"O_Truck_03_fuel_F"];
				};
			case 10:
				{
				_return =
				["Repair Kit",0,15000];
				};
			case 11:
				{
				_return =
				["Use Nos",0,15000];
				};
			case 12:
				{
				_return =
				["Vehicle Storage Upgrade",0,15000];
				};
			case 13:
				{
				_return =
				["Legal Relics",0,15000];
				};
			case 14:
				{
				_return =
				["Mineral Processor",1,"30% faster legal processing"];
				};
			case 15:
				{
				_return =
				["Truck Driver",0,20000];
				};
			case 16:
				{
				_return =
				["Blueprint",0,20000];
				};
			case 17:
				{
				_return =
				["Jerry Can",0,20000];
				};
			case 18:
				{
				_return =
				["SkyDiving",0,20000];
				};
			case 19:
				{
				_return =
				["Crop Dusting",3,"B_Plane_CAS_01_F"];
				};
			case 20:
				{
				_return =
				["Fuel Upgrade",0,25000];
				};
			case 21:
				{
				_return =
				["Camp Fire Heal",0,25000];
				};
			case 22:
				{
				_return =
				["Auto Miner",0,25000];
				};
			case 23:
				{
				_return =
				["Free Fuel",0,25000];
				};
			case 24:
				{
				_return =
				["Fuel Deliveries",3,"O_Heli_Transport_04_fuel_F"];
				};
			case 25:
				{
				_return =
				["Security Upgrade",0,30000];
				};
			case 26:
				{
				_return =
				["Relics Advanced",1,"Relics collection plus 30%"];
				};
			case 27:
				{
				_return =
				["Factory Item",1,"Craft speed increased by 30%"];
				};
			case 28:
				{
				_return =
				["Truck Driver Advanced",1,"No deposit needed for truck driving jobs"];
				};
			case 29:
				{
				_return =
				["Crop Dusting",1,"30% extra payment for crop dusting missions"];
				};
			case 30:
				{
				_return =
				["Fuel Deliveries Advanced",1,"50% off all future fuel prices"];
				};
			case 31:
				{
				_return =
				["Big Time Trucker",1,"Ability to purchase 2 extra real estate propertys"];
				};
			case 32:
				{
				_return =
				["Adv Vehicle Upgrade",4,"House storage upgrade item (Doubles your max house storage)"];
				};
			case 33:
				{
				_return =
				["The Auctions",0,250000];
				};
			case 34:
				{
				_return =
				["Big Crop Duster",1,"100% crop dusting payment increase"];
				};
			case 35:
				{
				_return =
				["Win $1m from Lotto",1,"Unlimited Airbags on all retrieved land vehicles"];
				};
			case 36:
				{
				_return =
				["Chopper Missions",1,"Ability to buy the advanced weapons license"];
				};
			case 37:
				{
				_return =
				["Chopper Missions Advances",1,"100% increase in chopper mission payments"];
				};
			case 38:
				{
				_return =
				["Crop Dusting Advanced pt2",1,"50% less chance of real estate damages"];
				};
			case 39:
				{
				_return =
				["Fishing Advanced",1,"Your water skills enable you to quench a small amount of thirst when eating"];
				};
			case 40:
				{
				_return =
				["Animal Repellent",1,"All ungaraged vehicles automatically have Animal Repellent upgrade added"];
				};
			case 41:
				{
				_return =
				["Nos pt2",1,"Double the amount of uses from any Nos kit you install"];
				};
			case 42:
				{
				_return =
				["Life Insurance",1,"Spawn in with bank insurance"];
				};
			case 43:
				{
				_return =
				["Drink Up",1,"Thirst gain is halved"];
				};
			case 44:
				{
				_return =
				["Crafting Level",1,"All crafting is 50% faster"];
				};
			case 45:
				{
				_return =
				["Random Auction",1,"Never again win a resource in a random auction"];
				};
			case 46:
				{
				_return =
				["Fuel Delivery Advanced pt2",1,"All ungaraged vehicles come with a super fuel upgrade installed"];
				};
			};
		};
	case 1:
		{
		switch(_curQuest)do
			{
			case 0:
				{
				_return =
				["Create Gang",0,2000];
				};
			case 1:
				{
				_return =
				["Gas Station Robbery",0,2000];
				};
			case 2:
				{
				_return =
				["Knock Out",0,2000];
				};
			case 3:
				{
				_return =
				["Siphon Fuel",0,2000];
				};
			case 4:
				{
				_return =
				["Drug Convoy",2,"B_Truck_01_box_F"];
				};
			case 5:
				{
				_return =
				["Vehicle Lockpick",0,5000];
				};
			case 6:
				{
				_return =
				["Rob Somebody",0,5000];
				};
			case 7:
				{
				_return =
				["Capture a Hideout",0,5000];
				};
			case 8:
				{
				_return =
				["Hospital Robbery",0,5000];
				};
			case 9:
				{
				_return =
				["Weapons Convoy",1,"Weapons Convoys cost half the price"];
				};
			case 10:
				{
				_return =
				["Chop Shop",0,15000];
				};
			case 11:
				{
				_return =
				["Pay Bail",0,15000];
				};
			case 12:
				{
				_return =
				["illegal Relics",0,15000];
				};
			case 13:
				{
				_return =
				["Strangle Someone",0,15000];
				};
			case 14:
				{
				_return =
				["Drug Harvester",1,"Drug harvest speed increased by 30%"];
				};
			case 15:
				{
				_return =
				["Rob a Cop",0,20000];
				};
			case 16:
				{
				_return =
				["Hospital Robbery",0,20000];
				};
			case 17:
				{
				_return =
				["Cop Killer",0,20000];
				};
			case 18:
				{
				_return =
				["Gas Station Robbery Advanced",0,20000];
				};
			case 19:
				{
				_return =
				["Drug Convoys Advanced",2,"B_G_Offroad_01_armed_F"];
				};
			case 20:
				{
				_return =
				["Meth Head",0,25000];
				};
			case 21:
				{
				_return =
				["Siphon Fuel Advanced",0,25000];
				};
			case 22:
				{
				_return =
				["Process Illegal Relics",0,25000];
				};
			case 23:
				{
				_return =
				["Weapons Convoy Advanced",3,"O_Heli_Transport_04_ammo_F"];
				};
			case 24:
				{
				_return =
				["Drug Processor",1,"Drugs process 30% quicker"];
				};
			case 25:
				{
				_return =
				["Gang Hideout Owner",1,"Hideout Capture time 20% quicker"];
				};
			case 26:
				{
				_return =
				["Chop Shop Advanced",1,"Lockpicks work 30% quicker"];
				};
			case 27:
				{
				_return =
				["KOS Capture Point",1,"Unlocks hotkey to quickly lock/unlock gang"];
				};
			case 28:
				{
				_return =
				["Hospital Robbery Advanced",0,30000];
				};
			case 29:
				{
				_return =
				["KOS Payments",1,"KOS Capture point takes 20% less time"];
				};
			case 30:
				{
				_return =
				["Gang Hideouts Advanced",1,"30% quicker Hideout Cap time"];
				};
			case 31:
				{
				_return =
				["Fake ID Convoy",1,"Double the income from gang payments"];
				};
			case 32:
				{
				_return =
				["Hostage Mission",1,"Police do not get your name when you take a hostage"];
				};
			case 33:
				{
				_return =
				["Gas Mask",1,"Each weapons convoy you complete will also contain a gas resistant illegal helmet"];
				};
			case 34:
				{
				_return =
				["Chop Shop Expert",1,"Chopshop works 50% faster"];
				};
			case 35:
				{
				_return =
				["Addict",1,"Getting drunk allows you to carry 300kg in stead of the normal 120kg"];
				};
			case 36:
				{
				_return =
				["Meth Head pt2",1,"Consuming Meth will give you 5 minutes of no recoil on your weapons"];
				};
			};
		};
	case 2:
		{
		switch(_curQuest)do
			{
			case 0:
				{
				_return =
				["Advanced Rebel Training",0,5000];
				};
			case 1:
				{
				_return =
				["Revive",0,5000];
				};
			case 2:
				{
				_return =
				["Lighter",0,5000];
				};
			case 3:
				{
				_return =
				["Use C4",0,5000];
				};
			case 4:
				{
				_return =
				["Car Bomb",3,"O_Heli_Light_02_unarmed_F"];
				};
			case 5:
				{
				_return =
				["Checkpoint",0,10000];
				};
			case 6:
				{
				_return =
				["Ziptie",0,10000];
				};
			case 7:
				{
				_return =
				["IED",0,10000];
				};
			case 8:
				{
				_return =
				["Armed Vehicle",0,10000];
				};
			case 9:
				{
				_return =
				["Destory Power Station",0,20000];
				};
			case 10:
				{
				_return =
				["Cop Killer Athira",0,20000];
				};
			case 11:
				{
				_return =
				["Vehicle Rearm",1,"50% quicker vehicle rearming"];
				};
			case 12:
				{
				_return =
				["Safe Cracker",0,30000];
				};
			case 13:
				{
				_return =
				["Spy Docs",0,30000];
				};
			case 14:
				{
				_return =
				["Cop Restrain",0,30000];
				};
			case 15:
				{
				_return =
				["Big Jail",1,"Can not fail doing hard jail work"];
				};
			case 16:
				{
				_return =
				["Money Bags",0,40000];
				};
			case 17:
				{
				_return =
				["Cop Killer Sofia",0,40000];
				};
			case 18:
				{
				_return =
				["Capture Checkpoint",0,40000];
				};
			case 19:
				{
				_return =
				["Steal Policebank",0,50000];
				};
			case 20:
				{
				_return =
				["Blow the doors",1,"25% faster C4 usages"];
				};
			case 21:
				{
				_return =
				["Thermal Strider Convoy",2,"O_MRAP_02_hmg_F"];
				};
			case 22:
				{
				_return =
				["Car Bomb Advanced",1,"Carbombs explode 50% faster"];
				};
			case 23:
				{
				_return =
				["Sell Spy Docs",0,50000];
				};
			case 24:
				{
				_return =
				["Craft A Lynx",1,"Ability to craft the Land Vehicle Ammo upgrade"];
				};
			case 25:
				{
				_return =
				["Escape Jail",1,"1 Minute off all future sentences"];
				};
			case 26:
				{
				_return =
				["Cop Killer Air Field",1,"Ability to purchase stun armour at rebel item shops"];
				};
			case 27:
				{
				_return =
				["Take Batteries",1,"Ability to craft the bulletproof SUV"];
				};
			case 28:
				{
				_return =
				["IED Advanced",1,"IED activation distance increased to 200m"];
				};
			case 29:
				{
				_return =
				["Cop Killer Kore Gas",0,70000];
				};
			case 30:
				{
				_return =
				["Hellcat Convoy",3,"B_Heli_Transport_01_camo_F"];
				};
			case 31:
				{
				_return =
				["Checkpoint Advanced",1,"25% Extra checkpoint payments"];
				};
			case 32:
				{
				_return =
				["Blow the jail Gates",1,"50% faster C4 Usage"];
				};
			case 33:
				{
				_return =
				["Armed Thermal Strider Convoy",1,"Thermal Convoy Start Prices 50% Off"];
				};
			case 34:
				{
				_return =
				["Spy Docs",3,"B_Heli_Attack_01_F"];
				};
			case 35:
				{
				_return =
				["Escape Jail Adv",1,"Low morality no longer increases your scope sway"];
				};
			case 36:
				{
				_return =
				["Dar Pawnee",1,"Ability to craft Air Vehicle Ammo upgrades"];
				};
			case 37:
				{
				_return =
				["Thermal Armed Vehicle",1,"Ability to craft Vehicle Thermal Upgrades"];
				};
			case 38:
				{
				_return =
				["Terrorist Mission",1,"Ability to craft a Blackfoot"];
				};
			};
		};
	case 3:
		{
		switch(_curQuest)do
				{
				case 0:
					{
					_return =
					["",0,0];
					};
				};
		if(player getVariable ["medic",false])then
			{
			switch(_curQuest)do
				{
				case 0:
					{
					_return =
					["Clean Up Kavala",0,10000];
					};
				case 1:
					{
					_return =
					["Clean Up Pyrgos",0,10000];
					};
				case 2:
					{
					_return =
					["Make Medikits",1,"25% off Medikit creation price"];
					};
				case 3:
					{
					_return =
					["Revive Someone",1,"50% quicker reviving"];
					};
				case 4:
					{
					_return =
					["Force Unlock",1,"50% quicker force lock speed"];
					};
				case 5:
					{
					_return =
					["Return Human Remains",1,"25% extra payment for delivering human remains"];
					};
				case 6:
					{
					_return =
					["Charge Someone",0,25000];
					};
				case 7:
					{
					_return =
					["Clean Up Athira",0,25000];
					};
				case 8:
					{
					_return =
					["Speed Boost",1,"10s off boost reload timer"];
					};
				case 9:
					{
					_return =
					["Treat Sickness",0,50000];
					};
				case 10:
					{
					_return =
					["Medic Missions",1,"Medic Missions Promotion"];
					};
				case 11:
					{
					_return =
					["Clean Up Pyrgos",1,"Dobule Payment for cleaning up human remains"];
					};
				case 12:
					{
					_return =
					["Cop Revive",1,"25% extra revive payment"];
					};
				case 13:
					{
					_return =
					["Return Human Remains",1,"Ability to quick travel between hospitals"];
					};
				case 14:
					{
					_return =
					["M900",1,"Ability to refuel at any Hospital"];
					};
				case 15:
					{
					_return =
					["Clean up Cocaine",0,75000];
					};
				case 16:
					{
					_return =
					["Make Medikits pt2",1,"Medikits made instantly"];
					};
				case 17:
					{
					_return =
					["Charge Someone pt2",1,"Unlimited Airbags on all unGaraged vehicles"];
					};
				case 18:
					{
					_return =
					["Clean Up the Airfield",1,"+50% human remains removal payment"];
					};
				case 19:
					{
					_return =
					["Revive People",1,"50% extra revive payment"];
					};
				case 20:
					{
					_return =
					["Medic Missions",1,"Medic Missions Promotion"];
					};
				case 21:
					{
					_return =
					["Clean up Weed",1,"Civilian Markers around Sofia Hospital"];
					};
				case 22:
					{
					_return =
					["Speed Boost pt2",1,"Further 10s off speed boost reload timer"];
					};
				case 23:
					{
					_return =
					["Return Human Remains pt3",1,"Double Speed For Quick Travels"];
					};
				case 24:
					{
					_return =
					["Revive Many People",1,"Double Speed For Quick Travels"];
					};
				case 25:
					{
					_return =
					["Clean up Heroin",1,"Civilian Markers around Telos Hospital"];
					};
				case 26:
					{
					_return =
					["Air Crash Medic Missions",1,"Buyable Orca In the Air Shop"];
					};
				case 27:
					{
					_return =
					["Dedication",1,"Ability to use a building box from your vehicles"];
					};
				case 28:
					{
					_return =
					["Clean up KOS",1,"Medic Missions Promotion"];
					};
				case 29:
					{
					_return =
					["Poison gas",5,"C_SUV_01_F"];
					};
				};
			};
		if(player getVariable ["mechanic",false])then
			{
			switch(_curQuest)do
				{
				case 0:
					{
					_return =
					["Clean Up Kavala",0,10000];
					};
				case 1:
					{
					_return =
					["Clean Up Pyrgos",0,10000];
					};
				case 2:
					{
					_return =
					["Make Repair Kits",1,"25% off repair kit created price"];
					};
				case 3:
					{
					_return =
					["Make Some Money",1,"+10% payout for quick impounding vehicles"];
					};
				case 4:
					{
					_return =
					["Clean Up Sofia",0,15000];
					};
				case 5:
					{
					_return =
					["Make Nos Kits",1,"25% off nos kit created price"];
					};
				case 6:
					{
					_return =
					["Force Locks",0,15000];
					};
				case 7:
					{
					_return =
					["Clean Up Athira",0,20000];
					};
				case 8:
					{
					_return =
					["Clean Up Police Vehicles",1,"+20% payment for quick impounding vehicles"];
					};
				case 9:
					{
					_return =
					["Kavala Tow Truck",1,"+50% Impound speed"];
					};
				case 10:
					{
					_return =
					["Impound 10 Air Vehicles",1,"Unlimited Air Bags on all un-garaged land vehicles"];
					};
				case 11:
					{
					_return =
					["Make 10 repair kits",1,"50% off repair kit created price + Instant creation speed"];
					};
				case 12:
					{
					_return =
					["Athira Tow Truck",1,"+25% Tow Truck Impound Reward"];
					};
				case 13:
					{
					_return =
					["Athira 10 Nos Kits",1,"50% off Nos kit created price + Instant creation speed"];
					};
				case 14:
					{
					_return =
					["Make More Money",1,"+30% payout for quick impounding vehicles"];
					};
				case 15:
					{
					_return =
					["Big Impounder",1,"Taru Buyable at shop"];
					};
				case 16:
					{
					_return =
					["Tow Truck Driver",1,"Spawn with a PDW weapon for defence"];
					};
				case 17:
					{
					_return =
					["Use Nos",1,"The Nos kits your create become 10 use kits"];
					};
				case 18:
					{
					_return =
					["Impound Air Vehicles",1,"Vehicles repair very quickly & Ability to do mechanic missions"];
					};
				case 19:
					{
					_return =
					["Mechanic Missions (Small)",1,"Mechanic Missions Promotion & Ability to use building box from vehicles"];
					};
				case 20:
					{
					_return =
					["Mechanic Missions (Medium)",1,"Mechanic Missions Promotion"];
					};
				case 21:
					{
					_return =
					["Mechanic Missions (Large)",1,"Mechanic Missions Promotion"];
					};
				case 22:
					{
					_return =
					["Mechanic Missions (Military)",1,"Ability to repair buildings from your vehicle"];
					};
				case 23:
					{
					_return =
					["Building Repairer",1,"Double payment for all mechanic missions"];
					};
				};
			};
		if(player getVariable ["security",false])then
			{
			switch(_curQuest)do
				{
				case 0:
					{
					_return =
					["Gas Money",1,"Nearby civilian markers distance increased to 100m"];
					};
				case 1:
					{
					_return =
					["Hospital Money",1,"Nearby police markers distance increased to 500m"];
					};
				case 2:
					{
					_return =
					["Vehicle Boost",1,"10 seconds off vehicle boost reload timer"];
					};
				case 3:
					{
					_return =
					["Close a Gas Station",1,"20% extra payments for protecting closed stores"];
					};
				case 4:
					{
					_return =
					["Remove Bank Money",1,"20% faster bank door opening speed"];
					};
				case 5:
					{
					_return =
					["Issue Ticket",1,"Ability to press 6 and see money value in shops"];
					};
				case 6:
					{
					_return =
					["Jail A Criminal",1,"Spawn in with stun gun rather than tazer gun"];
					};
				case 7:
					{
					_return =
					["Big Criminal",1,"Nearby police markers increased to 1km"];
					};
				case 8:
					{
					_return =
					["Protector",1,"Nearby civilian markers increased to 150m"];
					};
				case 9:
					{
					_return =
					["Gas Money pt2",1,"Other Security Contractors show up on your map"];
					};
				case 10:
					{
					_return =
					["Hospital Money pt2",1,"20% Bonus of money removed from hospitals"];
					};
				case 11:
					{
					_return =
					["Close a Hospital",1,"Nearby civilian markers distance increased to 200m"];
					};
				case 12:
					{
					_return =
					["Big Criminal pt2",1,"20% Extra bounty received for sending a criminal to a police HQ"];
					};
				case 13:
					{
					_return =
					["Close two Gas Stations",1,"50% extra payments for protecting closed stores"];
					};
				case 14:
					{
					_return =
					["Remove Bank Money pt2",1,"50% faster bank door opening speed"];
					};
				case 15:
					{
					_return =
					["Jail A Criminal pt2",1,"Spawn in with a lethal pistol instead of the P07"];
					};
				case 16:
					{
					_return =
					["Protector pt2",1,"Nearby civilian markers increased to 250m"];
					};
				case 17:
					{
					_return =
					["Big Criminal pt3",1,"Nearby police markers increased to 2km"];
					};
				case 18:
					{
					_return =
					["Vehicle Boost",1,"5 seconds off vehicle boost reload timer"];
					};
				case 19:
					{
					_return =
					["Close two Hospitals",1,"100% extra payments for protecting closed stores"];
					};
				case 20:
					{
					_return =
					["Big Time Criminal",1,"Spawn in with a Medikit and 3 gas grenades every time"];
					};
				case 21:
					{
					_return =
					["Protector pt3",1,"Tear Gas does not affect you while wearing a helmet"];
					};
				case 22:
					{
					_return =
					["Gas Money pt3",1,"Extra 50% payments from removing funds from gas stations"];
					};
				case 23:
					{
					_return =
					["Remove Bank Money pt3",1,"75% faster bank door opening speed"];
					};
				case 24:
					{
					_return =
					["Jail A Criminal pt3",1,"50% extra bounty payout when your jail a criminal"];
					};
				case 25:
					{
					_return =
					["Close five Gas Stations",1,"Nearby police markers increased to 3km"];
					};
				case 26:
					{
					_return =
					["Big Criminals",1,"Nearby civilian markers increased to 300m"];
					};
				case 27:
					{
					_return =
					["Vehicle Boost pt3",1,"30% faster speed boost"];
					};
				case 28:
					{
					_return =
					["Close ten Gas Stations",1,"unlimited Airbags in any land vehicle you retrieve"];
					};
				case 29:
					{
					_return =
					["Protect closed stores",1,"All un-garaged vehicles will be fitted with an advanced security kit"];
					};
				case 30:
					{
					_return =
					["Remove bank money",1,"MXM and MXSW added to weapons shop"];
					};
				case 31:
					{
					_return =
					["Close five Hospitals",1,"spawn in wearing a security helmet"];
					};
				case 32:
					{
					_return =
					["Jail five criminals",1,"Spawn in wearing a security vest"];
					};
				case 33:
					{
					_return =
					["Hospital Money pt3",1,"Spawn in with security kit auto-bought"];
					};
				case 34:
					{
					_return =
					["Big Criminals Pt2",1,"Spawn in with body armour already applied"];
					};
				case 35:
					{
					_return =
					["Protector pt4",1,"Cooldown time between sirens halved"];
					};
				case 36:
					{
					_return =
					["Vehicle Boost pt4",1,"Vehicle repair time halved"];
					};
				case 37:
					{
					_return =
					["Massive Criminal",1,"Spawn in with a Y inventory 3GL and some smoke shells"];
					};
				};
			};
		if(playerside == west)then
			{
			switch(_curQuest)do
				{
				case 0:
					{
					_return =
					["Play for 10 hours",0,50000];
					};
				case 1:
					{
					_return =
					["Issue 10 Tickets",0,50000];
					};
				case 2:
					{
					_return =
					["Impound 10 vehicles",0,50000];
					};
				case 3:
					{
					_return =
					["Police Checkpoints",1,"20% extra checkpoint payments"];
					};
				case 4:
					{
					_return =
					["Play for 20 hours",0,75000];
					};
				case 5:
					{
					_return =
					["Search a civilian vehicle",0,75000];
					};
				case 6:
					{
					_return =
					["Make 10 Arrest",0,75000];
					};
				case 7:
					{
					_return =
					["Play for 30 hours",1,"25% extra rank bonus"];
					};
				case 8:
					{
					_return =
					["Defuse Bomb",1,"25% faster defuse kit usage"];
					};
				case 9:
					{
					_return =
					["Impound 100 vehicles",1,"5s off speed boost recharge time"];
					};
				case 10:
					{
					_return =
					["Arrest 50 criminals",1,"50% extra arrest bounty payout"];
					};
				case 11:
					{
					_return =
					["Play for 60 hours",1,"200m range added to fuel dart launchers"];
					};
				case 12:
					{
					_return =
					["Set up the MCU",1,"100m range added to MCU civilian markers"];
					};
				case 13:
					{
					_return =
					["Clean up 10 Skeletons",1,"100% extra payment for cleaning up human remains"];
					};
				case 14:
					{
					_return =
					["Remove a dead body (Put it into your vehicle)",1,"All retrieved vehicles automatically come with unlimited Airbags"];
					};
				case 15:
					{
					_return =
					["Destroy a vehicle",1,"Armed Strider, Armed Pawnee and Speedboat HMG added to your vehicle shop (For senior Sergeants and up)"];
					};
				case 16:
					{
					_return =
					["Play for 100 hours",1,"MCU pack/unpack time 50% faster"];
					};
				case 17:
					{
					_return =
					["Complete 10 Patrol Missions",1,"Patrol Missions pay 50% more"];
					};
				case 18:
					{
					_return =
					["Arrest 75 Criminals",1,"Switch between lethal and stun 50% faster"];
					};
				case 19:
					{
					_return =
					["Detain the spy",1,"All retrieved vehicles come with a fuel upgrade"];
					};
				case 20:
					{
					_return =
					["Complete a police convoy",1,"25% extra payment from completing convoys"];
					};
				case 21:
					{
					_return =
					["Evict Tenants",1,"25% quicker tenant evicting"];
					};
				case 22:
					{
					_return =
					["Impound 200 vehicles",1,"another 5 seconds off speed boost recharge"];
					};
				case 23:
					{
					_return =
					["Complete 50 patrol Missions",5,"C_SUV_01_F"];
					};
				case 24:
					{
					_return =
					["Play Cop for 200 hours",1,"+100 space in police locker"];
					};
				case 25:
					{
					_return =
					["Hard working police force",1,"Armed Orca in your vehicle shop (If you're the correct rank)"];
					};
				case 26:
					{
					_return =
					["Issue 100 Tickets",1,"Gas Grenades no longer affect you even without headgear on"];
					};
				case 27:
					{
					_return =
					["Arrest 150 Criminals",1,"No Animation when buying body armour and switching weapon state"];
					};
				};
			};
		};
	};

_return