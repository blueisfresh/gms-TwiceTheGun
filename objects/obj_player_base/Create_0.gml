/// @description obj_player_base Create

event_inherited();

facing_direction = 0;

// Sprites for movement
sprite_walk_up = cowboy_walk_up_spritesheet;
sprite_walk_down = cowboy_walk_down_spritesheet;
sprite_walk_left = cowboy_walk_left_spritesheet;
sprite_walk_right = cowboy_walk_right_spritesheet;


// Function: Handle Movement and Sprite Switching
move_player = function(_who, up_key, down_key, left_key, right_key) {
    if (keyboard_check(up_key)) {
        y -= MOVE_SPEED;
        sprite_index = sprite_walk_up; // Use instance variable for the sprite
    } else if (keyboard_check(down_key)) {
        y += MOVE_SPEED;
        sprite_index = sprite_walk_down; // Use instance variable for the sprite
    } else if (keyboard_check(left_key)) {
        x -= MOVE_SPEED;
        sprite_index = sprite_walk_left; // Use instance variable for the sprite
    } else if (keyboard_check(right_key)) {
        x += MOVE_SPEED;
        sprite_index = sprite_walk_right; // Use instance variable for the sprite
    } else {
		if(_who.object_index == obj_player_left){
			sprite_index = cowboy_idle_left_spritesheet
		} else if (_who.object_index == obj_player_right) {
			sprite_index = cowboy_idle_right_spritesheet
		}
    }

    keep_within_bounds(); // Ensure the player stays in bounds
    log($"Facing direction: {facing_direction}");
};

// Function: Keep within room boundaries
keep_within_bounds = function() {
    x = clamp(x, 0, room_width - sprite_width);
    y = clamp(y, 0, room_height - sprite_height);
};

// Function: Handle Shooting
handle_shooting = function(player_instance) {
    if (player_instance.is_cooldown_ready()) {
        var gun_offset = player_instance.sprite_width / 2 + 10; // Add offset for bullet spawn
        var bullet = instance_create_layer(
            player_instance.x + lengthdir_x(gun_offset, player_instance.facing_direction),
            player_instance.y + lengthdir_y(gun_offset, player_instance.facing_direction),
            "lyr_bullet",
            obj_bullet
        );
        bullet.direction = player_instance.facing_direction; // Set bullet direction
        bullet.speed = 10;                                  // Set bullet speed
        player_instance.start_cooldown();                   // Start cooldown timer
    } 
};



