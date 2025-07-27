// ROCK EXPLODE PARTICLE SYSTEM
global.ps_rock_explode_system = part_system_create(ps_explode_rock_black_V2);
global.pt_rock_explode_type = particle_get_info(ps_explode_rock_black_V2).emitters[0].parttype.ind;

// PLAYER EXPLODE PARTICLE SYSTEM
global.ps_player_explode_system = part_system_create(ps_explode_player_1);
global.pt_player_explode_type = particle_get_info(ps_explode_player_1).emitters[0].parttype.ind;