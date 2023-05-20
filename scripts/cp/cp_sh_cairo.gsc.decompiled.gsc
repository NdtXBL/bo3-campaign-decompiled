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
	Name: function_d290ebfa
	Namespace: namespace_c0022b6f
	Checksum: 0xC38907C8
	Offset: 0x498
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_863d6bb0(120);
	function_673254cc();
	namespace_e008e850::function_d290ebfa();
	namespace_5da1e067::function_d290ebfa();
	namespace_d7916d65::function_d290ebfa();
	level thread function_ad7adee8();
	level thread function_56051a78();
}

/*
	Name: function_673254cc
	Namespace: namespace_c0022b6f
	Checksum: 0x43373189
	Offset: 0x530
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_654c9dda("dev_no_bunk", &function_d525a88c, "No Bunk Start");
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
function function_d525a88c(var_b04bc952, var_74cd64bc)
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
	level namespace_ad23e503::function_1ab5ebec("all_players_connected");
	level thread function_b7170f9e();
	namespace_a6816cde::function_a85e8026(1);
	switch(level.var_a6f47549)
	{
		case "cp_mi_cairo_infection":
		case "cp_mi_cairo_infection2":
		case "cp_mi_cairo_infection3":
		{
			level namespace_82b91a51::function_b85473ac(0);
			break;
		}
		case "cp_mi_cairo_aquifer":
		{
			level namespace_82b91a51::function_b85473ac(1);
			break;
		}
		case "cp_mi_cairo_lotus":
		case "cp_mi_cairo_lotus2":
		case "cp_mi_cairo_lotus3":
		{
			level namespace_82b91a51::function_b85473ac(0);
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
	var_67a453fb = function_6643d7e6("ambient_vtol", "targetname");
	while(1)
	{
		var_67a453fb = namespace_84970cc4::function_8332f7f6(var_67a453fb);
		foreach(var_1f3f1cb0 in var_67a453fb)
		{
			var_1f3f1cb0.var_74952a22++;
			var_3c54858a = function_243bb261(var_1f3f1cb0.var_b07228b6, "targetname");
			var_edc6e0e1 = namespace_2f06d687::function_7387a40a(var_1f3f1cb0);
			var_edc6e0e1 function_7c2455a1((300, 300, 300), 3);
			var_edc6e0e1 thread namespace_96fa87af::function_edb3a94e(var_3c54858a);
			wait(function_72a94f05(30, 90));
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
	var_53d1df2a = [];
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_saf_ram_armory_vign_repair_3dprinter";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_saf_ram_armory_vign_tech_bunk";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_saf_ram_armory_vign_tech_inspect";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_saf_ram_armory_vign_tech_diagnostics";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_saf_ram_armory_vign_tech_firerange";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_saf_ram_armory_vign_tech_datavault";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_saf_ram_armory_vign_supply_box";
	var_53d1df2a = namespace_84970cc4::function_8332f7f6(var_53d1df2a);
	var_c25c66df = function_dc99997a(4, 6);
	/#
	#/
	for(var_8640fa79 = 0; var_8640fa79 < var_c25c66df; var_8640fa79++)
	{
		var_294306eb = var_53d1df2a[var_8640fa79];
		level thread namespace_cc27597::function_43718187(var_294306eb);
	}
}

