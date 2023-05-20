#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_pallas;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_19d629e;

/*
	Name: function_cc756659
	Namespace: namespace_19d629e
	Checksum: 0x90247713
	Offset: 0x3F8
	Size: 0x1FB
	Parameters: 2
	Flags: None
*/
function function_cc756659(var_b04bc952, var_74cd64bc)
{
	function_6ddd4fa4("sgen_ocean_water");
	if(var_74cd64bc)
	{
		namespace_82b91a51::function_d8eaed3d(4);
		level namespace_cc27597::function_c35e6aab("cin_sgen_20_twinrevenge_3rd_sh010");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_descend_into_core");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_signal_source");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_server_room");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_confront_pallas");
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		level thread namespace_646f304f::function_4ef8cf79();
		namespace_d7916d65::function_a2995f22();
		level namespace_cc27597::function_43718187("cin_sgen_20_twinrevenge_3rd_sh010");
	}
	level waittill("hash_3f04e63f");
	namespace_82b91a51::function_a0938376();
	namespace_82b91a51::function_76f13293();
	level namespace_82b91a51::function_7d553ac6();
	function_d4f82627("clear", "cin_sgen_19_ghost_3rd");
	function_d4f82627("clear", "cin_sgen_20_twinrevenge_3rd");
}

/*
	Name: function_b2f95c13
	Namespace: namespace_19d629e
	Checksum: 0xE59384A6
	Offset: 0x600
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_b2f95c13(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	function_9e3608e3("sgen_ocean_water");
}

/*
	Name: function_a8e314e9
	Namespace: namespace_19d629e
	Checksum: 0x640E21CA
	Offset: 0x648
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_a8e314e9()
{
	level namespace_cc27597::function_8f9f34e0("cin_sgen_20_twinrevenge_3rd_sh010", &function_1e832062, "play", 3);
	level namespace_cc27597::function_8f9f34e0("cin_sgen_20_twinrevenge_3rd_sh010_nohint", &function_1e832062, "play", 3);
	level namespace_cc27597::function_8f9f34e0("cin_sgen_20_twinrevenge_3rd_sh070", &function_1e832062, "play", 3);
	level namespace_cc27597::function_8f9f34e0("cin_sgen_20_twinrevenge_3rd_sh070", &function_ac7d11ce, "play");
	level namespace_cc27597::function_8f9f34e0("cin_sgen_20_twinrevenge_3rd_sh080", &function_867a9765, "play");
	level namespace_cc27597::function_8f9f34e0("cin_sgen_20_twinrevenge_3rd_sh090", &function_a1234ba5, "play");
	level namespace_cc27597::function_8f9f34e0("cin_sgen_20_twinrevenge_3rd_sh090", &function_46e34900, "done");
	if(function_27c72c1b())
	{
		level namespace_cc27597::function_8f9f34e0("cin_sgen_20_twinrevenge_3rd_sh010", &function_c52866de, "play");
		level namespace_cc27597::function_8f9f34e0("cin_sgen_20_twinrevenge_3rd_sh010_nohint", &function_c52866de, "play");
	}
}

/*
	Name: function_c52866de
	Namespace: namespace_19d629e
	Checksum: 0x3A6000C3
	Offset: 0x830
	Size: 0x27
	Parameters: 1
	Flags: None
*/
function function_c52866de(var_c77d2837)
{
	if(isdefined(level.var_847128ad))
	{
		level thread [[level.var_847128ad]]();
	}
}

/*
	Name: function_a1234ba5
	Namespace: namespace_19d629e
	Checksum: 0x16BA821B
	Offset: 0x860
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_a1234ba5(var_c77d2837)
{
	level waittill("hash_a1234ba5");
	namespace_82b91a51::function_7e61de2b(0, "black", "hide_trans_flood");
}

/*
	Name: function_46e34900
	Namespace: namespace_19d629e
	Checksum: 0x8F6BC434
	Offset: 0x8A8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_46e34900(var_c77d2837)
{
	namespace_82b91a51::function_a0938376();
	function_1e832062(var_c77d2837, 0);
	namespace_1d795d47::function_f58fccb8("flood_combat");
	namespace_1d795d47::function_be8adfb8("twin_revenge");
}

/*
	Name: function_ac7d11ce
	Namespace: namespace_19d629e
	Checksum: 0x226C020B
	Offset: 0x918
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_ac7d11ce(var_c77d2837)
{
	wait(1);
	level namespace_71e9cb84::function_74d6b22f("w_twin_igc_fxanim", 1);
	wait(1);
	level namespace_71e9cb84::function_74d6b22f("w_twin_igc_fxanim", 2);
}

/*
	Name: function_867a9765
	Namespace: namespace_19d629e
	Checksum: 0x35D7F110
	Offset: 0x980
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_867a9765(var_c77d2837)
{
	wait(1);
	level namespace_71e9cb84::function_74d6b22f("w_twin_igc_fxanim", 3);
}

/*
	Name: function_1e832062
	Namespace: namespace_19d629e
	Checksum: 0x2E73E3BD
	Offset: 0x9C0
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_1e832062(var_c77d2837, var_47710ba8)
{
	level namespace_71e9cb84::function_74d6b22f("set_exposure_bank", var_47710ba8);
}

