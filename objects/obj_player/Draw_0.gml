//draw event

newY = lerp(newY,y,0.55); 
newX = lerp(newX,x,0.55);

draw_sprite_ext(sprite_index,image_index,newX ,newY ,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
//draw eventimage_index,x,newY ,image_xscale,image_yscale,image_angle,image_blend,image_alpha);