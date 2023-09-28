#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_safehouse;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_sh_cairo_fx;
#using scripts\cp\cp_sh_cairo_sound;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\music_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_c0022b6f;

/*
	Name: main
	Namespace: namespace_c0022b6f
	Checksum: 0xC38907C8
	Offset: 0x498
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function main()
{
	SetClearanceCeiling(120);
	setup_skiptos();
	namespace_e008e850::main();
	namespace_5da1e067::main();
	load::main();
	level thread function_ad7adee8();
	level thread function_56051a78();
}

/*
	Name: setup_skiptos
	Namespace: namespace_c0022b6f
	Checksum: 0x43373189
	Offset: 0x530
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function setup_skiptos()
{
	skipto::function_654c9dda("dev_no_bunk", &function_d525a88c, "No Bunk Start");
}

/*
	Name: function_d525a88c
	Namespace: namespace_c0022b6f
	Checksum: 0x47462886
	Offset: 0x570
	Size: 0x1F
	Parameters: 2
	Flags: None
*/
function function_d525a88c(str_objective, var_74cd64bc)
{
	level.var_2e24ecad = 1;
}

/*
	Name: function_ad7adee8
	Namespace: namespace_c0022b6f
	Checksum: 0x49100808
	Offset: 0x598
	Size: 0xF5
	Parameters: 0
	Flags: None
*/
function function_ad7adee8()
{
	level flag::wait_till("all_players_connected");
	level thread function_b7170f9e();
	safehouse::function_a85e8026(1);
	switch(level.var_a6f47549)
	{
		case "cp_mi_cairo_infection":
		case "cp_mi_cairo_infection2":
		case "cp_mi_cairo_infection3":
		{
			level util::set_lighting_state(0);
			break;
		}
		case "cp_mi_cairo_aquifer":
		{
			level util::set_lighting_state(1);
			break;
		}
		case "cp_mi_cairo_lotus":
		case "cp_mi_cairo_lotus2":
		case "cp_mi_cairo_lotus3":
		{
			level util::set_lighting_state(0);
			break;
		}
	}
}

/*
	Name: function_b7170f9e
	Namespace: namespace_c0022b6f
	Checksum: 0x98A7A80E
	Offset: 0x698
	Size: 0x19D
	Parameters: 0
	Flags: None
*/
function function_b7170f9e()
{
	var_67a453fb = GetVehicleSpawnerArray("ambient_vtol", "targetname");
	while(1)
	{
		var_67a453fb = Array::randomize(var_67a453fb);
		foreach(var_1f3f1cb0 in var_67a453fb)
		{
			var_1f3f1cb0.count++;
			nd_start = GetVehicleNode(var_1f3f1cb0.target, "targetname");
			vh_vtol = spawner::simple_spawn_single(var_1f3f1cb0);
			vh_vtol PathVariableOffset((300, 300, 300), 3);
			vh_vtol thread vehicle::get_on_and_go_path(nd_start);
			wait(RandomFloatRange(30, 90));
		}
	}
}

/*
	Name: function_56051a78
	Namespace: namespace_c0022b6f
	Checksum: 0x6A875DA3
	Offset: 0x840
	Size: 0x365
	Parameters: 0
	Flags: None
*/
function function_56051a78()
{
	a_str_scenes = [];
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_saf_ram_armory_vign_repair_3dprinter";
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_saf_ram_armory_vign_tech_bunk";
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_saf_ram_armory_vign_tech_inspect";
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_saf_ram_armory_vign_tech_diagnostics";
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_saf_ram_armory_vign_tech_firerange";
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_saf_ram_armory_vign_tech_datavault";
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_saf_ram_armory_vign_supply_box";
	a_str_scenes = Array::randomize(a_str_scenes);
	var_c25c66df = randomIntRange(4, 6);
	/#
	#/
	for(var_8640fa79 = 0; var_8640fa79 < var_c25c66df; var_8640fa79++)
	{
		str_scene = a_str_scenes[var_8640fa79];
		level thread scene::Play(str_scene);
	}
}

