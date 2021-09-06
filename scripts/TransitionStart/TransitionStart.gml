// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function TransitionStart(_roomTarget, _typeOut, _typeIn){
if(!global.midTransition){
	global.midTransition = true;
	global.roomTarget = _roomTarget;
	TransitionPlaceSequence(_typeOut);
	layer_set_target_room(_roomTarget);
	TransitionPlaceSequence(_typeIn);
	layer_reset_target_room();
	return true;
}else return false;
}