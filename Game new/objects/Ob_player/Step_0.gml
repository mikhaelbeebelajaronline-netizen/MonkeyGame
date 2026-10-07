right_key = keyboard_check(ord("D"))
left_key = keyboard_check(ord("A"))
up_key = keyboard_check(ord("W"))
down_key = keyboard_check(ord("S"))

if (keyboard_check(vk_shift)){
	move_spd = sprint_spd
} else {
	move_spd = walk_spd
}

xspd = (right_key - left_key) * move_spd
yspd = (down_key - up_key) * move_spd

//collision
if(place_meeting(x + xspd, y, ob_collision)) {
	xspd = 0
}

if(place_meeting(x, y + yspd, ob_collision)) {
	yspd = 0
}

x += xspd
y += yspd


if (xspd > 0) {
	sprite_index = Sp_kanan
} else if (xspd < 0) {
	sprite_index = Sp_kiri
} else if (yspd > 0) {
	sprite_index = Sp_belakang
} else if (yspd < 0) {
	sprite_index = Sp_depan
}


if (xspd != 0 or yspd != 0) {
	image_speed = 1
} else {
	image_speed = 0
	image_index= 0
}


