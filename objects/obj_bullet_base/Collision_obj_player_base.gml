/// @description obj_bullet_base Collision with obj_player_base

handle_player_collision(other);

// Create the explosion at the collision position
instance_create_layer(x, y, "lyr_effects", obj_explosion);

