/// @description obj_bullet_base

speed = 10;
direction = 0;
image_angle = direction;

check_out_of_bounds = function() {
    if (x < 0 || x > room_width || y < 0 || y > room_height) {
        instance_destroy(); // Destroy the bullet if it leaves the room
    }
};

reduce_lifetime = function() {
    lifetime -= 1; // Reduce lifetime
    if (lifetime <= 0) {
        instance_destroy(); // Destroy the bullet if lifetime expires
    }
};

handle_obstacle_collision = function(collision_object) {
    with (collision_object) {
        durability -= 1; // Reduce obstacle durability
        if (durability <= 0) {
            instance_destroy(); // Destroy the obstacle if durability is zero
        }
    }
    instance_destroy(); // Destroy the bullet
};

handle_player_collision = function(collision_object) {
    with (collision_object) {
        if (!got_hit) {  // Check if the player hasn't been hit already
            got_hit = true; // Mark the player as hit
        } else {
            instance_destroy(); // Destroy the player if hit again
			room_goto(rm_gameover);
        }
    }
    instance_destroy(); // Destroy the bullet
};

check_bullet_miss = function(player) {
    // Check if the bullet is outside the room boundaries
    if (x < 0 || x > room_width || y < 0 || y > room_height) {
        // Reset the `got_hit` variable for the specific player
        if (player) {
            player.got_hit = false;
        }

        // Destroy the bullet
        instance_destroy();
    }
};