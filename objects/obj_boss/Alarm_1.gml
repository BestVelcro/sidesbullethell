if(state == "IDLE"){
	startattack = true;
	show_debug_message("Arroz");
}
if(state == "ATTACK"){
	state = "IDLE";
	clock = false;
}