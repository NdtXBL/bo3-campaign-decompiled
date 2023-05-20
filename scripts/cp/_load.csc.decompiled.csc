#using scripts\codescripts\struct;
#using scripts\cp\_ambient;
#using scripts\cp\_bouncingbetty;
#using scripts\cp\_callbacks;
#using scripts\cp\_claymore;
#using scripts\cp\_decoy;
#using scripts\cp\_destructible;
#using scripts\cp\_explosive_bolt;
#using scripts\cp\_flashgrenades;
#using scripts\cp\_global_fx;
#using scripts\cp\_hacker_tool;
#using scripts\cp\_helicopter_sounds;
#using scripts\cp\_laststand;
#using scripts\cp\_mobile_armory;
#using scripts\cp\_oed;
#using scripts\cp\_proximity_grenade;
#using scripts\cp\_radiant_live_update;
#using scripts\cp\_rewindobjects;
#using scripts\cp\_riotshield;
#using scripts\cp\_rotating_object;
#using scripts\cp\_satchel_charge;
#using scripts\cp\_skipto;
#using scripts\cp\_tacticalinsertion;
#using scripts\cp\_trophy_system;
#using scripts\cp\bonuszm\_bonuszm;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\gametypes\_player_cam;
#using scripts\cp\gametypes\_weaponobjects;
#using scripts\shared\_oob;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\archetype_shared\archetype_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfaceanim_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\footsteps_shared;
#using scripts\shared\load_shared;
#using scripts\shared\music_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\weapons\_bouncingbetty;
#using scripts\shared\weapons\_proximity_grenade;
#using scripts\shared\weapons\_riotshield;
#using scripts\shared\weapons\_satchel_charge;
#using scripts\shared\weapons\_sticky_grenade;
#using scripts\shared\weapons\_tacticalinsertion;
#using scripts\shared\weapons\_trophy_system;
#using scripts\shared\weapons\antipersonnelguidance;
#using scripts\shared\weapons\multilockapguidance;
#using scripts\shared\weapons\spike_charge;

#namespace namespace_d7916d65;

/*
	Name: function_2e683bb6
	Namespace: namespace_d7916d65
	Checksum: 0xFC7F8EBB
	Offset: 0x7F0
	Size: 0x39
	Parameters: 3
	Flags: None
*/
function function_2e683bb6(var_cf6fe380, var_86c93e40, var_b73db72f)
{
	if(var_86c93e40 != "")
	{
		level notify(var_86c93e40, var_cf6fe380);
	}
}

/*
	Name: function_d290ebfa
	Namespace: namespace_d7916d65
	Checksum: 0x1D397CF3
	Offset: 0x838
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	/#
		/#
			namespace_33b293fd::function_a7ee953(isdefined(level.var_f968e47b), "Dev Block strings are not supported");
		#/
	#/
	if(isdefined(level.var_31868693) && level.var_31868693)
	{
		return;
	}
	level.var_31868693 = 1;
	level thread namespace_82b91a51::function_627630ff();
	level thread namespace_82b91a51::function_b2dbe562();
	level thread function_4ece4a2f();
	namespace_82b91a51::function_68ed15b1("levelNotify", &function_2e683bb6);
	level.var_e9c3ce23 = function_4bd0142f("disable_fx") == 1;
	level thread namespace_7df5be44::function_c35e6aab();
	level thread namespace_3d2de961::function_d290ebfa();
	namespace_dabbe128::function_de460788("hash_da8d7d74", &function_fe5263bc);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_bea63b8a::function_1ab5ebec("all");
	function_60086937();
	level namespace_957e94ce::function_74d6b22f("load_main_complete");
	function_6c1294b8("phys_wind_enabled", 0);
}

/*
	Name: function_fe5263bc
	Namespace: namespace_d7916d65
	Checksum: 0x478993FF
	Offset: 0xA00
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_fe5263bc(var_ec74b091)
{
	if(!isdefined(level.var_8f9cc7d0))
	{
		level.var_8f9cc7d0 = [];
	}
	level.var_8f9cc7d0[var_ec74b091] = 0;
	function_c030da5c(var_ec74b091, "default");
}

/*
	Name: function_aebcf025
	Namespace: namespace_d7916d65
	Checksum: 0x3DD95BC4
	Offset: 0xA60
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_aebcf025(var_ec74b091)
{
	self thread function_2de2e7f(var_ec74b091);
}

/*
	Name: function_2de2e7f
	Namespace: namespace_d7916d65
	Checksum: 0x80A7C077
	Offset: 0xA90
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_2de2e7f(var_ec74b091)
{
	self endon("hash_d5da096");
	while(!function_e730cff4(var_ec74b091))
	{
		wait(0.25);
	}
	wait(0.25);
	self function_8d2f662f();
}

/*
	Name: function_4ece4a2f
	Namespace: namespace_d7916d65
	Checksum: 0x576E8083
	Offset: 0xAF8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_4ece4a2f()
{
	namespace_71e9cb84::function_50f16166("toplayer", "sndHealth", 1, 2, "int", &namespace_4fe3eef1::function_e1ab476f, 0, 0);
}

