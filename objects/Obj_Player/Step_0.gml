if keyboard_check(vk_up)
{
    motion_add(image_angle + 90, 0.8);
    friction = 0;
}
else
{
    friction = 0.1;
}

if keyboard_check(vk_left)
{
    image_angle += 10;
}

if keyboard_check(vk_right)
{
    image_angle -= 10;
}

if (speed > 10) speed = 10;

move_wrap(true, true, 0);
//ONE BULLET SHOT AT A TIME 
if keyboard_check_pressed(vk_space)
{
    if (!instance_exists(Obj_bullet)) // Only create a bullet if none exist
    {
        instance_create_layer(x, y, "Instances", Obj_bullet);
    }
}