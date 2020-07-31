//Goto Main menu
if keyboard_check_pressed(vk_escape)
   {
	game_end();
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
   
//room goto map
if keyboard_check_pressed(vk_f3)
   {
	room_goto(room0)
   }