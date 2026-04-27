// if not paused, then pause and deactivate all instances
// if paused, then unpause and activate all instances again
if(!pause){
	pause = 1;
	instance_deactivate_all(true);
}
else{
	pause = 0;
	instance_activate_all();
}