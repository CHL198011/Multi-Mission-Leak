/*
ArmA.Network
Afghan Colors
*/
If(!life_afghancolor)then {
"ColorCorrections" ppEffectEnable true;
"ColorCorrections" ppEffectAdjust [0.9, 0.9, 0, [0, 0.1, 0.25, -0.14], [1, 1, 1, 1.26], [0.15, 0.09, 0.09, 0.0]];
"ColorCorrections" ppEffectCommit 0;
life_afghancolor = true;
} else {
"ColorCorrections" ppEffectEnable false;
life_afghancolor = false;
}; 
