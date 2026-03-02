var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap);

if (keyboard_check_pressed(vk_space)) {
    var _inst = instance_create_depth(x, y, depth, obj_attack);
_inst.image_angle = point_direction(0,0,_hor,_ver);
_inst.damage *= damage;
}

