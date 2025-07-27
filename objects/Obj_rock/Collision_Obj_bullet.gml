// Create particles at the rock's position using the ROCK particle system
part_particles_create(global.ps_rock_explode_system, x, y, global.pt_rock_explode_type, 10);

//BULLET DIRECTION VARIABLES BELOW:
var bullet_relative_dir = point_direction(x, y, other.x, other.y);
var rock_recoil_dir = bullet_relative_dir + 180;
var recoil_speed = 2;

direction = rock_recoil_dir;
speed = recoil_speed;

// SMALL ROCK GETS CREATED
if sprite_index == rock_1_blck
{
	sprite_index = rock_1_small;
	instance_copy(true)
}
else if instance_number(Obj_rock) < 10
{
	sprite_index = rock_1_blck;
	x = -100;
}
else
{
	instance_destroy();
}
//ACTUALLY DESTOYS THE SMALL ROCKS FOR GOOD VVV
instance_destroy();