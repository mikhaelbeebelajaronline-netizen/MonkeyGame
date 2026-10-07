room_goto(target_room)
Ob_player.x = target_x
Ob_player.y = target_y

//facing

if(facing = 0) {
	Ob_player.sprite_index = Sp_kanan
}


if(facing = 1) {
	Ob_player.sprite_index = Sp_kiri
}

if(facing = 2) {
	Ob_player.sprite_index = Sp_depan
}

if(facing = 3) {
	Ob_player.sprite_index = Sp_belakang
}

//fade out
image_speed = -1