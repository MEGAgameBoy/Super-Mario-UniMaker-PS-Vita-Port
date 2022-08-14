///draw_sprite_tiled_horizontal(sprite,subimg,x,y)
/***************************************************
  Usage :   draw_sprite_tiled_horizontal(sprite,subimg,x,y)
  Arguments :   argument0   ==  sprite
                argument1   ==  sub image (image_index)
                argument2   ==  x
                argument3   ==  y
  Event :   draw event
 ***************************************************/

 var sprite,width,xx,yy,left,right,i;
 
 sprite=argument0;
 width=sprite_get_width(sprite);
 image_index=argument1
 xx=argument2;
 yy=argument3;
 left=-1;
 right=view_xview[view_current]/width+view_wview[view_current]/width+1;
 if (view_enabled)
 {
    for (i=left; i<right; i+=1)
    {
        draw_sprite(sprite,image_index,xx mod width+width*i,yy);
    };
 }
 else
 {
    for (i=-1; i<room_width/width+1; i+=1)
    {
        draw_sprite(sprite,image_index,xx mod width+width*i,yy);
    };
 };
 
