if(startattack == true) && (state == "IDLE"){
	state = "ATTACK";
	startattack = false;
	clock = false;
}
show_debug_message("Banana");