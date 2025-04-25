left_key = (keyboard_check(vk_left)) x = x -3;
right_key = (keyboard_check(vk_right)) x = x +3;
up_key = (keyboard_check(vk_up)) y = y -3;
down_key = (keyboard_check(vk_down)) y = y +3;

xspd = (right_key - left_key) * move_spd;

yspd = (down_key - up_key) * move_spd;


if place_meeting(x + xspd, y, oWall) = true
{
	xspd = 0;
}

if place_meeting(x, y + yspd, oWall) = true
{
	yspd = 0;
}


if place_meeting(x + xspd, y, OBed) = true
{
	xspd = 0;
}

if place_meeting(x, y + yspd, OBed) = true
{
	yspd = 0;
}

x += xspd;
y += yspd;


if instance_exists(OPlayer_Pauser)
{
	xspd = 0;
	yspd = 0;
}


if yspd = 0
{
if xspd > 0 {face = RIGHT};
if xspd < 0 {face = LEFT};
}
if xspd = 0
{
if yspd > 0 {face = DOWN};
if yspd < 0 {face = UP};
}
if xspd = 0 && yspd = 0
{
	image_index = 0;
}
sprite_index = sprite[face];