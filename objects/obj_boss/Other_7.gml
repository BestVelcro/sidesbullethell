if(startattack == true) && (state == "IDLE"){
	state = "ATTACK";
	startattack = false;
	clock = false;
}
if(startattack == true) && (state == "ATTACK"){
	state = "IDLE";
	startattack = false;
	clock = false;
}