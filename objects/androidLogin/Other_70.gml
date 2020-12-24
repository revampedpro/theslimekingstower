/*var ident = ds_map_find_value(async_load, "id");
if ident == achievement_our_info
   {
   name = ds_map_find_value(async_load, "name" );
   playerid = ds_map_find_value(async_load, "playerid" );
   global.OurName = name;
   global.OurId = playerid;
   //achievement_get_challenges();
   //achievement_load_friends();
   //achievement_load_progress();
show_message_async("Mi: " + name);
show_message_async("Mi: " + playerid);
   }
   
show_message_async(string(ident));


//get_login_async()