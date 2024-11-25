/// @description event
/// @description variable init

#region color;
image_blend = draw_color;
init_xscale = image_xscale;
init_yscale = image_yscale;


color_anim_runner = 0;
color_anim_running = false;
color_anim_target = draw_color_mouse_over;
color_start_start = draw_color;

start_color_anim = function(_target_coler){
    color_anim_runner = 0;
    color_anim_running = true;
    color_anim_target = _target_coler;
    color_start_start = image_blend;
}



stop_color_anim = function(){
    color_anim_runner = 0;
    color_anim_running = false;
}
#endregion

size_anim_runner        = 0;
size_anim_running        = false;
size_anim_target_x        = undefined; 
size_anim_target_y        = undefined;
size_start_start_x        = undefined;
size_start_start_y        = undefined;



start_size_anim = function(_target_size_x,_target_size_y) {
    size_anim_runner    = 0;
    size_anim_running    = true;
    size_anim_target_x    = _target_size_x;
    size_anim_target_y    = _target_size_y;
    size_start_start_x    = image_xscale;
    size_start_start_y    = image_yscale;
}

stop_size_anim = function(){
    size_anim_runner    = 0;
    size_anim_running    = false;
}