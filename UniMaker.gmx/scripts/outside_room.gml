///outside_room()

/*
**  Usage:
**      outside_view()
**
**  Returns:
**      Whether or not the object is outside the view (View 0)
*/
return bbox_right < - 16 or bbox_left > room_width + 16 or bbox_bottom < - 16 or bbox_top > room_height + 16
