   if global.fullscreen = false
      {
      window_set_fullscreen(false);
	  sprite_index = spr_fullscreen;
	  global.fullscreen = true
      }
   else
      {
      window_set_fullscreen(true);
	  sprite_index = spr_fullscreenON;
	  global.fullscreen = false
      }