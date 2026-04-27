function create_dialogue(messages){
	if(instance_exists(obj_dialogue)) return;
	
	var inst = instance_create_depth(0, 0, 0, obj_dialogue);
	inst.messages = messages;
	inst.currentMessage = 0; 
}