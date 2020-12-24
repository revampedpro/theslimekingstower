/// @description Couldn't connect to cloud server
show_message_async("Couldn't connect to cloud server. Please restart or continue as a guest.");
instance_destroy();
room_goto(cutscene01);