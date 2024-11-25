/// @description GameObject Create

// Function: Start Cooldown
start_cooldown = function() {
    cooldown_timer = cooldown_time; // Set the timer to the cooldown duration
};

// Function: Update Cooldown Timer
update_cooldown = function() {
    if (cooldown_timer > 0) {
        cooldown_timer -= 1; // Decrease the timer each step
    }
};

// Function: Check if Cooldown is Ready
is_cooldown_ready = function() {
    return cooldown_timer > 0 ? false : true;
};
