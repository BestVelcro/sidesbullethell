// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScreenShake(a, b){
	with(global.iCamera){
		if(a > shakeRemain){
			shakeMagnitude = a;
			shakeRemain = shakeMagnitude;
			shakeLength = b;
		}
	}
}