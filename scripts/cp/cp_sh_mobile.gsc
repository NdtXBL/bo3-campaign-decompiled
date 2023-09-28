#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_safehouse;
#using scripts\cp\_util;
#using scripts\cp\cp_sh_mobile_fx;
#using scripts\cp\cp_sh_mobile_sound;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_735829fb;

/*
	Name: main
	Namespace: namespace_735829fb
	Checksum: 0x47BABAEB
	Offset: 0x3D0
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_43c49144::main();
	namespace_94ce943b::main();
	load::main();
	level thread function_ad7adee8();
	level thread function_56051a78();
	level scene::add_scene_func("p_player_enter_readyroom_mobile", &function_1b1968a9, "init");
	level.var_8ea79b65 = &function_6c5a247e;
	level.var_58373e3b = &function_3a7a79ca;
	level.var_f3db725a = &function_9e35a10d;
}

/*
	Name: function_ad7adee8
	Namespace: namespace_735829fb
	Checksum: 0x5F5A8C9D
	Offset: 0x4B8
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_ad7adee8()
{
	level thread function_6d9e2e34();
	level flag::wait_till("all_players_connected");
	safehouse::function_a85e8026(2);
	level thread function_301c79b5(1);
	switch(level.var_a6f47549)
	{
		case "cp_mi_eth_prologue":
		{
			level util::set_lighting_state(0);
			break;
		}
		case "cp_mi_cairo_ramses":
		case "cp_mi_cairo_ramses2":
		case "cp_mi_cairo_ramses3":
		{
			level util::set_lighting_state(1);
			safehouse::function_a85e8026(1);
			function_301c79b5(2);
			break;
		}
		case "cp_mi_zurich_coalescence":
		{
			level util::set_lighting_state(1);
			safehouse::function_a85e8026(3);
			function_301c79b5(3);
			break;
		}
	}
	level.var_ac964c36 = 1;
	level thread Rumbles();
}

/*
	Name: function_1b1968a9
	Namespace: namespace_735829fb
	Checksum: 0xEB9F479C
	Offset: 0x650
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_1b1968a9(a_ents)
{
	var_adad709 = a_ents["safe_room_door"];
	var_adad709 notsolid();
}

/*
	Name: Rumbles
	Namespace: namespace_735829fb
	Checksum: 0x4A96AFFE
	Offset: 0x698
	Size: 0x17F
	Parameters: 0
	Flags: None
*/
function Rumbles()
{
	v_source = (56, 0, 439);
	while(1)
	{
		if(RandomInt(100) < 20)
		{
			wait(RandomFloatRange(0.5, 3));
		}
		else
		{
			wait(RandomFloatRange(5, 10));
		}
		n_rand = RandomInt(100);
		if(isdefined(level.var_ac964c36) && level.var_ac964c36)
		{
			if(n_rand < 10)
			{
				Earthquake(0.2, 0.75, v_source, 2000);
			}
			else if(n_rand < 40)
			{
				Earthquake(0.1, 0.75, v_source, 2000);
			}
			else
			{
				Earthquake(0.1, 0.5, v_source, 2000);
			}
			playsoundatposition("evt_fuselage_shake", v_source);
		}
	}
}

/*
	Name: function_6d9e2e34
	Namespace: namespace_735829fb
	Checksum: 0xACF3D6A5
	Offset: 0x820
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function function_6d9e2e34()
{
	level.var_ea4a62a = util::spawn_model("tag_origin");
	callback::on_spawned(&function_eb7433ac);
	while(1)
	{
		n_degree = RandomFloatRange(0.25, 1);
		n_time = RandomFloatRange(3, 6);
		level.var_ea4a62a RotateRoll(n_degree, n_time, n_time / 2, n_time / 2);
		level.var_ea4a62a waittill("rotatedone");
		level.var_ea4a62a RotateRoll(n_degree * -1, n_time, n_time / 2, n_time / 2);
		level.var_ea4a62a waittill("rotatedone");
	}
}

/*
	Name: function_eb7433ac
	Namespace: namespace_735829fb
	Checksum: 0x4253AB1F
	Offset: 0x968
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_eb7433ac()
{
	self endon("death");
	while(1)
	{
		self playerSetGroundReferenceEnt(level.var_ea4a62a);
		self flag::wait_till("in_training_sim");
		self playerSetGroundReferenceEnt(undefined);
		self flag::wait_till_clear("in_training_sim");
	}
}

/*
	Name: function_9ca26ba0
	Namespace: namespace_735829fb
	Checksum: 0x4989B921
	Offset: 0xA00
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_9ca26ba0()
{
	while(1)
	{
		n_degree = RandomFloatRange(0.25, 1);
		n_time = RandomFloatRange(3, 6);
		self RotateRoll(n_degree, n_time, n_time / 2, n_time / 2);
		self waittill("rotatedone");
		self RotateRoll(n_degree * -1, n_time, n_time / 2, n_time / 2);
		self waittill("rotatedone");
	}
}

/*
	Name: function_6c5a247e
	Namespace: namespace_735829fb
	Checksum: 0x76B31C5
	Offset: 0xAF0
	Size: 0x59
	Parameters: 0
	Flags: None
*/
function function_6c5a247e()
{
	switch(level.var_a6f47549)
	{
		case "cp_mi_eth_prologue":
		{
			util::set_lighting_state(1);
			break;
		}
		case default:
		{
			util::set_lighting_state(0);
		}
	}
}

/*
	Name: function_3a7a79ca
	Namespace: namespace_735829fb
	Checksum: 0x19DBE7CB
	Offset: 0xB58
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_3a7a79ca()
{
	util::set_lighting_state();
}

/*
	Name: function_9e35a10d
	Namespace: namespace_735829fb
	Checksum: 0xB8B130A6
	Offset: 0xB78
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_9e35a10d()
{
	util::set_lighting_state(1);
}

/*
	Name: function_301c79b5
	Namespace: namespace_735829fb
	Checksum: 0xE8B216F5
	Offset: 0xBA0
	Size: 0x1A5
	Parameters: 1
	Flags: None
*/
function function_301c79b5(n_num)
{
	wait(1);
	var_1d257bd1 = GetEnt("fxanim_skybox_01", "targetname");
	var_4327f63a = GetEnt("fxanim_skybox_02", "targetname");
	var_692a70a3 = GetEnt("fxanim_skybox_03", "targetname");
	switch(n_num)
	{
		case 1:
		{
			var_1d257bd1 show();
			var_4327f63a Hide();
			var_692a70a3 Hide();
			break;
		}
		case 2:
		{
			var_1d257bd1 Hide();
			var_4327f63a show();
			var_692a70a3 Hide();
			break;
		}
		case 3:
		{
			var_1d257bd1 Hide();
			var_4327f63a Hide();
			var_692a70a3 show();
			break;
		}
	}
}

/*
	Name: function_56051a78
	Namespace: namespace_735829fb
	Checksum: 0x77062265
	Offset: 0xD50
	Size: 0x2CD
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
	a_str_scenes[a_str_scenes.size] = "cin_saf_mob_armory_vign_repair_3dprinter";
	e_spawner = GetEnt("worker_spawner", "targetname");
	a_str_scenes = Array::randomize(a_str_scenes);
	var_c25c66df = randomIntRange(2, 3);
	/#
	#/
	for(var_8640fa79 = 0; var_8640fa79 < var_c25c66df; var_8640fa79++)
	{
		str_scene = a_str_scenes[var_8640fa79];
		level thread scene::Play(str_scene, e_spawner);
	}
}

