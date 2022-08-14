///draw_sprite_tiled_vertical(sprite,subimg,x,y)
/***************************************************
  Usage :   draw_sprite_tiled_vertical(sprite,subimg,x,y)
  Arguments :   argument0   ==  sprite
                argument1   ==  sub image (image_index)
                argument2   ==  x
                argument3   ==  y
  Event :   draw event
 ***************************************************/

 var sprite,height,xx,yy,up,down,i;
 
 sprite=argument0;
 height=sprite_get_height(sprite);
 image_index=argument1
 xx=argument2;
 yy=argument3;
 up=-1;
 down=view_yview[view_current]/height+view_hview[view_current]/height+1;
 if (view_enabled)
 {
    for (i=up; i<down; i+=1)
    {
        draw_sprite(sprite,image_index,xx,yy mod height+height*i);
    };
 }
 else
 {
    for (i=-1; i<room_height/height+1; i+=1)
    {
        draw_sprite(sprite,image_index,xx,yy mod height+height*i);
    };
 };
 
