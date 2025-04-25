if place_meeting(x, y, ORom) && not instance_exists(OWarp_animation)
{
	var inst = instance_create_depth(0, 0, -9999, OWarp_animation);
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_rm = target_rm;
}