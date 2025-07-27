// In obj_Player (or whatever your player object is) Destroy Event:

// Spawn player explosion particles at the player's current position
part_particles_create(global.ps_player_explode_system, x, y, global.pt_player_explode_type, 20); // Adjust particle count (20 here) as desired

// Other player destruction logic (like setting an alarm on GameManager if needed)
obj_GameManager.alarm[0] = 120; // This alarm is specific to your game logic
// No need for instance_destroy() here if this code is in the Destroy Event itself,
// as the Destroy Event runs *because* the instance is being destroyed.

//DESTOYS PLAYER UPON DEATH
instance_destroy();