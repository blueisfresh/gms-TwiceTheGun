/// @description event

/// @description event
if (color_anim_running == true) {
    image_blend = merge_color(
        color_start_start,
        color_anim_target,
        (++color_anim_runner) / color_anim_time
    );


    if (color_anim_runner == color_anim_time){
        stop_color_anim();
    }
}



if (size_anim_running == true) {
    size_anim_runner++;
    image_xscale = lerp(
        size_start_start_x,
        size_anim_target_x,
        size_anim_runner / size_anim_time);

    image_yscale = lerp(
        size_start_start_y,
        size_anim_target_y,
        size_anim_runner / size_anim_time);


    if (size_anim_runner == size_anim_time) {
        stop_size_anim();
    }
}