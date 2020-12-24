application_surface_enable(true);
alarm[0] = 1;
obj_Jugador.visible = false;
s = 0;
sur_newroom = -1;
sur_oldroom = -1;
aspectH = (1 - ((window_get_width() - 1280)/window_get_width()))/2;
aspectV = (1 - ((window_get_height() - 720)/window_get_height()))/2;
surface_resize(application_surface, window_get_width(), window_get_height());

