if place_meeting(x, y, Ob_player) and !instance_exists(ob_fade){

	var instantiated = instance_create_depth(0, 0, -9999, ob_fade)
	instantiated.target_x = target_x
	instantiated.target_y = target_y
	instantiated.target_room = target_room
	instantiated.facing = facing
}