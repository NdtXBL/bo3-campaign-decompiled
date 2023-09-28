#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_safehouse;
#using scripts\cp\_util;
#using scripts\cp\cp_sh_singapore_fx;
#using scripts\cp\cp_sh_singapore_sound;
#using scripts\shared\array_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_709124d9;

/*
	Name: main
	Namespace: namespace_709124d9
	Checksum: 0x440B5D99
	Offset: 0x350
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_e4ce27de::main();
	namespace_d3b26b91::main();
	load::main();
	level thread function_ad7adee8();
	level thread function_56051a78();
}

/*
	Name: function_ad7adee8
	Namespace: namespace_709124d9
	Checksum: 0x43E00092
	Offset: 0x3C0
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function function_ad7adee8()
{
	level flag::wait_till("all_players_connected");
	switch(level.var_a6f47549)
	{
		case "cp_mi_sing_blackstation":
		{
			level util::set_lighting_state(0);
			break;
		}
		case "cp_mi_sing_biodomes":
		case "cp_mi_sing_biodomes2":
		{
			level util::set_lighting_state(1);
			break;
		}
		case "cp_mi_sing_sgen":
		{
			level util::set_lighting_state(0);
			break;
		}
		case "cp_mi_sing_vengeance":
		{
			level util::set_lighting_state(2);
			break;
		}
	}
}

/*
	Name: function_56051a78
	Namespace: namespace_709124d9
	Checksum: 0xF5129561
	Offset: 0x4A0
	Size: 0x345
	Parameters: 0
	Flags: None
*/
function function_56051a78()
{
	function_82dd4dd2("cin_ram_02_03_station_vign_readingipad_guy01");
	a_str_scenes = [];
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_ram_02_03_station_vign_bloodmopping_clean";
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_ram_02_03_station_vign_balcony_surveying_guy01";
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_ram_02_03_station_vign_balcony_surveying_guy02";
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_ram_02_03_station_vign_scaffold_inspecting";
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_ram_02_03_station_vign_readingipad_guy01";
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_saf_bla_armory_vign_repair_3dprinter";
	e_spawner = GetEnt("worker_spawner", "targetname");
	a_str_scenes = Array::randomize(a_str_scenes);
	var_c25c66df = randomIntRange(3, 4);
	/#
	#/
	for(var_8640fa79 = 0; var_8640fa79 < var_c25c66df; var_8640fa79++)
	{
		str_scene = a_str_scenes[var_8640fa79];
		level thread scene::Play(str_scene, e_spawner);
	}
}

/*
	Name: function_82dd4dd2
	Namespace: namespace_709124d9
	Checksum: 0xE894CE9D
	Offset: 0x7F0
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function function_82dd4dd2(str_scene)
{
	foreach(s_scenedef in struct::get_script_bundles("scene"))
	{
		if(s_scenedef.name === str_scene)
		{
			s_scenedef.aligntarget = undefined;
		}
	}
}

