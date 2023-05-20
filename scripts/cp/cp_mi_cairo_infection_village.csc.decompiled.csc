#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_8cdbec1b;

/*
	Name: function_d290ebfa
	Namespace: namespace_8cdbec1b
	Checksum: 0x89C00444
	Offset: 0x520
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
	level thread function_afd04353();
	level thread function_ba1c81f9();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_8cdbec1b
	Checksum: 0x52CE176
	Offset: 0x570
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "village_mortar_index", 1, 3, "int", &function_130beaa2, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "village_intro_mortar", 1, 1, "int", &function_f0638072, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "init_fold", 1, 1, "int", &function_aa7aa249, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "start_fold", 1, 1, "int", &function_5058bf3d, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "fold_buildings", 1, 1, "int", &function_b459a9c8, 0, 0);
}

/*
	Name: function_aa7aa249
	Namespace: namespace_8cdbec1b
	Checksum: 0x77684B8
	Offset: 0x6E8
	Size: 0x9B
	Parameters: 7
	Flags: None
*/
function function_aa7aa249(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 != var_ade4d29d)
	{
		namespace_ad23e503::function_c35e6aab("fold_done");
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_fold_debris_rise_bundle");
		level thread function_abc51a3c(var_ec74b091);
	}
}

/*
	Name: function_5058bf3d
	Namespace: namespace_8cdbec1b
	Checksum: 0x57742ACA
	Offset: 0x790
	Size: 0xB3
	Parameters: 7
	Flags: None
*/
function function_5058bf3d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 != var_ade4d29d)
	{
		level thread function_983280bc(var_ec74b091, 1);
		level namespace_cc27597::function_43718187("p7_fxanim_cp_infection_fold_debris_rise_bundle");
		namespace_ad23e503::function_74d6b22f("fold_done");
		level thread function_983280bc(var_ec74b091, 0);
	}
}

/*
	Name: function_abc51a3c
	Namespace: namespace_8cdbec1b
	Checksum: 0x6F1CD9A6
	Offset: 0x850
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_abc51a3c(var_ec74b091)
{
	namespace_ad23e503::function_1ab5ebec("fold_done");
	var_f92a03e7 = function_6ada35ba(var_ec74b091, "t_fold_debris_fall", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_fold_debris_fall_bundle");
}

/*
	Name: function_983280bc
	Namespace: namespace_8cdbec1b
	Checksum: 0x536C8CF2
	Offset: 0x8E0
	Size: 0xBB
	Parameters: 2
	Flags: None
*/
function function_983280bc(var_ec74b091, var_91792360)
{
	var_2c19440 = function_6ada35ba(var_ec74b091, "fold_earthquake_origin", "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_2c19440), "Dev Block strings are not supported");
	#/
	if(var_91792360)
	{
		var_2c19440 function_8dedca9c(var_ec74b091, "cp_infection_fold");
	}
	else
	{
		var_2c19440 function_8a0ba272(var_ec74b091, "cp_infection_fold");
	}
}

/*
	Name: function_afd04353
	Namespace: namespace_8cdbec1b
	Checksum: 0xA27A04DD
	Offset: 0x9A8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_afd04353()
{
	level waittill("hash_fcce54d0");
	namespace_4fe3eef1::function_11908f52("evt_infection_record_outdoor", (-66583, -8277, 539));
	namespace_4fe3eef1::function_11908f52("evt_infection_record_outdoor", (-66974, -5736, 481));
	namespace_4fe3eef1::function_11908f52("evt_infection_record_outdoor", (-68367, -4740, 469));
}

/*
	Name: function_130beaa2
	Namespace: namespace_8cdbec1b
	Checksum: 0x6EB89F6C
	Offset: 0xA40
	Size: 0x53
	Parameters: 7
	Flags: None
*/
function function_130beaa2(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	level.var_d7c3a688 = var_9193c732;
	level.var_a50160b4 = 1;
}

/*
	Name: function_ba1c81f9
	Namespace: namespace_8cdbec1b
	Checksum: 0x512FE1AE
	Offset: 0xAA0
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function function_ba1c81f9()
{
	if(!isdefined(level.var_d7c3a688))
	{
		level.var_d7c3a688 = 0;
		level.var_a50160b4 = 1;
	}
	var_5e76f0af = 0;
	var_67520c6a = 0.1;
	while(1)
	{
		switch(level.var_d7c3a688)
		{
			case 1:
			{
				var_1e806caa = namespace_14b42b8a::function_7faf4c39("s_village_mortar_1", "targetname");
				var_67520c6a = function_72a94f05(1.3, 2);
				break;
			}
			case 2:
			{
				var_1e806caa = namespace_14b42b8a::function_7faf4c39("s_village_mortar_2", "targetname");
				var_67520c6a = function_72a94f05(1.3, 2);
				break;
			}
			case 3:
			{
				var_1e806caa = namespace_14b42b8a::function_7faf4c39("s_village_mortar_3", "targetname");
				var_67520c6a = function_72a94f05(1.3, 2.2);
				break;
			}
			case 0:
			case default:
			{
				var_1e806caa = undefined;
				break;
			}
		}
		if(isdefined(var_1e806caa))
		{
			if(isdefined(level.var_a50160b4))
			{
				var_5e76f0af = function_26299103(var_1e806caa.size);
				level.var_a50160b4 = undefined;
			}
			function_fd4ba5e1(0, "explosions/fx_exp_mortar_snow", var_1e806caa[var_5e76f0af].var_722885f3);
			var_5e76f0af++;
			if(var_5e76f0af >= var_1e806caa.size)
			{
				var_5e76f0af = 0;
			}
		}
		wait(var_67520c6a);
	}
}

/*
	Name: function_f0638072
	Namespace: namespace_8cdbec1b
	Checksum: 0x6A6375BA
	Offset: 0xCD8
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_f0638072(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_dcbae9fe = namespace_14b42b8a::function_7922262b("s_village_intro_mortar", "targetname");
	function_fd4ba5e1(0, "explosions/fx_exp_mortar_snow", var_dcbae9fe.var_722885f3);
}

/*
	Name: function_b459a9c8
	Namespace: namespace_8cdbec1b
	Checksum: 0xFD93D62D
	Offset: 0xD78
	Size: 0x219
	Parameters: 7
	Flags: None
*/
function function_b459a9c8(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_f45c8a8 = [];
	var_f45c8a8["bank_jnt"] = "p7_fxanim_cp_infection_fold_bank_mod";
	var_f45c8a8["barn_01_jnt"] = "p7_fxanim_cp_infection_fold_barn01_mod";
	var_f45c8a8["barn_02_jnt"] = "p7_fxanim_cp_infection_fold_barn02_mod";
	var_f45c8a8["boarding_jnt"] = "p7_fxanim_cp_infection_fold_boarding_mod";
	var_f45c8a8["church_jnt"] = "p7_fxanim_cp_infection_fold_church_mod";
	var_f45c8a8["hotel_jnt"] = "p7_fxanim_cp_infection_fold_hotel_mod";
	var_f45c8a8["house_01_jnt"] = "p7_fxanim_cp_infection_fold_house01_mod";
	var_f45c8a8["house_02_jnt"] = "p7_fxanim_cp_infection_fold_house02_mod";
	var_f45c8a8["tankhouse_jnt"] = "p7_fxanim_cp_infection_fold_tankhouse_mod";
	var_f45c8a8["tenements_jnt"] = "p7_fxanim_cp_infection_fold_tenements_mod";
	foreach(var_bfcb06ed in var_f45c8a8)
	{
		var_e7e10be5 = namespace_82b91a51::function_b9fd52a4(var_ec74b091, var_bfcb06ed, self function_d48f2ab3(var_c6107c9b), self function_cd1d99bd(var_c6107c9b));
		var_e7e10be5 function_37f7858a(self, var_c6107c9b);
	}
}

