//Goto Main menu
if keyboard_check_pressed(vk_escape)
   {
	room_goto(MainMenu);
   }
// Fullscreen on and off
if keyboard_check_pressed(vk_f4)
   {
   if window_get_fullscreen()
      {
      window_set_fullscreen(false);
      }
   else
      {
      window_set_fullscreen(true);
      }
   }
   
