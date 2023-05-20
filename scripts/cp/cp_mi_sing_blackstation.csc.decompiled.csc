#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_blackstation_fx;
#using scripts\cp\cp_mi_sing_blackstation_patch_c;
#using scripts\cp\cp_mi_sing_blackstation_sound;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\duplicaterender_mgr;
#using scripts\shared\exploder_shared;
#using scripts\shared\filter_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;
#using scripts\shared\water_surface;

#namespace namespace_502339f3;

/*
	Name: function_d290ebfa
	Namespace: namespace_502339f3
	Checksum: 0xF9067D84
	Offset: 0x1450
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_82b91a51::function_57b966c8(&function_71f88fc, 5);
	function_4ece4a2f();
	function_487d2c0();
	level.var_c1aa5253["rain_light_ne"] = "weather/fx_rain_system_lite_ne_runner_blackstation";
	level.var_c1aa5253["rain_light_se"] = "weather/fx_rain_system_lite_se_runner_blackstation";
	level.var_c1aa5253["rain_med_ne"] = "weather/fx_rain_system_med_ne_runner_blackstation";
	level.var_c1aa5253["rain_med_se"] = "weather/fx_rain_system_med_se_runner_blackstation";
	level.var_c1aa5253["rain_drench_ne"] = "weather/fx_rain_system_drench_ne_runner_blackstation";
	level.var_c1aa5253["rain_drench_se"] = "weather/fx_rain_system_drench_se_runner_blackstation";
	level.var_c1aa5253["wave_pier"] = "water/fx_water_splash_xlg";
	level.var_c1aa5253["wind_effects_anchor"] = "player/fx_plyr_screen_wind_blkstn_anchor_runner";
	level.var_c1aa5253["wind_effects"] = "player/fx_plyr_screen_wind_blkstn_se_runner";
	level.var_c1aa5253["bubbles"] = "player/fx_plyr_swim_bubbles_body";
	level.var_c1aa5253["water_spash_lrg"] = "water/fx_water_splash_xlg";
	level.var_c1aa5253["water_debris"] = "water/fx_underwater_debris_player_loop_blkstn";
	namespace_1c38f9cf::function_c20cc247("sitrep_keyline_red", 25, "keyline_active_red", "keyfill_active_red", 2, "mc/hud_outline_model_red", 0);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_56310eec::function_d290ebfa();
	namespace_7a033503::function_d290ebfa();
	function_673254cc();
	namespace_d7916d65::function_d290ebfa();
	namespace_82b91a51::function_44333182(0);
	namespace_65aaef5e::function_7403e82b();
}

/*
	Name: function_4ece4a2f
	Namespace: namespace_502339f3
	Checksum: 0x17DFE76E
	Offset: 0x16B8
	Size: 0x82B
	Parameters: 0
	Flags: None
*/
function function_4ece4a2f()
{
	namespace_71e9cb84::function_50f16166("actor", "kill_target_keyline", 1, 4, "int", &function_e722258b, 0, 0);
	namespace_71e9cb84::function_50f16166("allplayers", "zipline_sound_loop", 1, 1, "int", &function_982d4d35, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "water_disturbance", 1, 1, "int", &function_f354307b, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "water_splash_lrg", 1, 1, "counter", &function_fedbe3ab, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "player_rain", 1, 3, "int", &function_42998a0f, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "rumble_loop", 1, 1, "int", &function_989f7c26, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "sndWindSystem", 1, 2, "int", &namespace_7a033503::function_879c3b17, 0, 1);
	namespace_71e9cb84::function_50f16166("toplayer", "zipline_rumble_loop", 1, 1, "int", &function_85392f32, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "player_water_swept", 1, 1, "int", &function_fd89a017, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "toggle_ukko", 1, 2, "int", &function_983b5ccf, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "toggle_rain_sprite", 1, 2, "int", &function_e951f9d2, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "wind_blur", 1, 1, "int", &function_4a01cc4e, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "wind_effects", 1, 2, "int", &function_ffa95b91, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "subway_water", 1, 1, "int", &function_c170b293, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "play_bubbles", 1, 1, "int", &function_58e931d1, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "toggle_water_fx", 1, 1, "int", &function_65582e9e, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "wave_hit", 1, 1, "int", &function_40788165, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "subway_entrance_crash", 1, 1, "int", &function_adfd4203, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "water_level", 1, 3, "int", &function_ec1c5731, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "roof_panels_init", 1, 1, "int", &function_59e9894a, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "roof_panels_play", 1, 1, "int", &function_db90ecbe, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "subway_tiles", 1, 1, "int", &function_33d0325b, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "warlord_exposure", 1, 1, "int", &function_f6681c64, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "outro_exposure", 1, 1, "int", &function_c1835b73, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "sndDrillWalla", 1, 2, "int", &namespace_7a033503::function_598a3b92, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "sndBlackStationSounds", 1, 1, "int", &namespace_7a033503::function_c6d82f9d, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "flotsam", 1, 1, "int", &function_5d2e29ca, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "sndStationWalla", 1, 1, "int", &namespace_7a033503::function_fb96c813, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "qzone_debris", 1, 1, "counter", &function_dadc58c3, 0, 0);
}

/*
	Name: function_487d2c0
	Namespace: namespace_502339f3
	Checksum: 0x30055AC9
	Offset: 0x1EF0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_487d2c0()
{
	level namespace_ad23e503::function_c35e6aab("building_break");
}

/*
	Name: function_983b5ccf
	Namespace: namespace_502339f3
	Checksum: 0x522A1493
	Offset: 0x1F20
	Size: 0xD3
	Parameters: 7
	Flags: None
*/
function function_983b5ccf(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		switch(var_9193c732)
		{
			case 1:
			{
				var_4bc288a0 = 31;
				break;
			}
			case 2:
			{
				var_4bc288a0 = 32;
				break;
			}
		}
		function_3a876950(var_ec74b091, var_4bc288a0, 1);
		wait(0.1);
		function_3a876950(var_ec74b091, 2, 1);
	}
}

/*
	Name: function_f6681c64
	Namespace: namespace_502339f3
	Checksum: 0x779665E
	Offset: 0x2000
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_f6681c64(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		function_2f183a94(var_ec74b091, 2);
	}
	else
	{
		function_2f183a94(var_ec74b091, 1);
	}
}

/*
	Name: function_c1835b73
	Namespace: namespace_502339f3
	Checksum: 0x86437616
	Offset: 0x2090
	Size: 0x9B
	Parameters: 7
	Flags: None
*/
function function_c1835b73(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		function_2f183a94(var_ec74b091, 3);
		function_c1dc0657(var_ec74b091, 2);
	}
	else
	{
		function_2f183a94(var_ec74b091, 1);
	}
}

/*
	Name: function_58e931d1
	Namespace: namespace_502339f3
	Checksum: 0x5E397F0D
	Offset: 0x2138
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_58e931d1(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self thread function_6e954d4(var_ec74b091);
	}
	else
	{
		self thread function_6fb5501(var_ec74b091);
	}
}

/*
	Name: function_6e954d4
	Namespace: namespace_502339f3
	Checksum: 0x7E473E5C
	Offset: 0x21C0
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_6e954d4(var_ec74b091)
{
	self endon("hash_128f8789");
	self.var_b5e2500e = function_2e9c26ef(var_ec74b091, level.var_c1aa5253["bubbles"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
	self.var_35da2bd6 = function_2e9c26ef(var_ec74b091, level.var_c1aa5253["water_debris"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
	self thread function_738868d4(var_ec74b091);
}

/*
	Name: function_6fb5501
	Namespace: namespace_502339f3
	Checksum: 0x8E0A5DE2
	Offset: 0x2278
	Size: 0x69
	Parameters: 1
	Flags: None
*/
function function_6fb5501(var_ec74b091)
{
	if(isdefined(self.var_b5e2500e))
	{
		function_d555a113(var_ec74b091, self.var_b5e2500e);
	}
	if(isdefined(self.var_35da2bd6))
	{
		function_835a2f7b(var_ec74b091, self.var_35da2bd6);
	}
	self notify("hash_a48959b9");
}

/*
	Name: function_738868d4
	Namespace: namespace_502339f3
	Checksum: 0xACC676CD
	Offset: 0x22F0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_738868d4(var_ec74b091)
{
	self endon("hash_a48959b9");
	self waittill("hash_128f8789");
	self function_6fb5501(var_ec74b091);
}

/*
	Name: function_4a01cc4e
	Namespace: namespace_502339f3
	Checksum: 0xEA2A0E3C
	Offset: 0x2338
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_4a01cc4e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_3cbcdf3a(var_ec74b091, 0.07, 0.55, 0.9, 0, 100, 100);
	}
	else
	{
		function_fa59de5f(var_ec74b091);
	}
}

/*
	Name: function_967477f8
	Namespace: namespace_502339f3
	Checksum: 0xFFE25CA7
	Offset: 0x23D8
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_967477f8(var_ec74b091, var_2d166751)
{
	var_ead32655 = function_79c174a3(var_ec74b091);
	var_ead32655.var_c873665a = var_2d166751;
	namespace_3d5de9eb::function_e4987221(var_ead32655);
}

/*
	Name: function_e951f9d2
	Namespace: namespace_502339f3
	Checksum: 0x8A95DB85
	Offset: 0x2448
	Size: 0x103
	Parameters: 7
	Flags: None
*/
function function_e951f9d2(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_2d166751 = 0.1;
	}
	else if(var_9193c732 == 2)
	{
		var_2d166751 = 0.4;
	}
	else if(var_9193c732 == 3)
	{
		var_2d166751 = 0.8;
	}
	else
	{
		var_2d166751 = 0;
		self thread function_643ad70d(var_ec74b091);
	}
	if(var_2d166751)
	{
		function_967477f8(var_ec74b091, var_2d166751);
		self thread function_f26e8536(var_ec74b091, var_2d166751);
	}
}

/*
	Name: function_f26e8536
	Namespace: namespace_502339f3
	Checksum: 0x57F8137D
	Offset: 0x2558
	Size: 0x13F
	Parameters: 2
	Flags: None
*/
function function_f26e8536(var_ec74b091, var_868ea283)
{
	self notify("hash_10c60859");
	self endon("hash_d5da096");
	self endon("hash_128f8789");
	self endon("hash_10c60859");
	namespace_3d5de9eb::function_cfb866d9(self, 0);
	if(!isdefined(self.var_c873665a))
	{
		self.var_c873665a = var_868ea283;
	}
	if(self.var_c873665a == 0)
	{
		namespace_3d5de9eb::function_6449643b(self, 0, var_868ea283);
	}
	namespace_3d5de9eb::function_cd327356(self, 0);
	while(1)
	{
		self.var_c873665a = self.var_c873665a + 0.001;
		if(self.var_c873665a > 1)
		{
			self.var_c873665a = var_868ea283;
		}
		namespace_3d5de9eb::function_748fd87f(self, 0, self.var_c873665a);
		namespace_3d5de9eb::function_7398d2c8(self, 0, self function_43cc4179());
		wait(0.016);
	}
}

/*
	Name: function_643ad70d
	Namespace: namespace_502339f3
	Checksum: 0xEF8CD74E
	Offset: 0x26A0
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_643ad70d(var_ec74b091)
{
	self endon("hash_d5da096");
	self endon("hash_128f8789");
	if(isdefined(self.var_c873665a))
	{
		while(self.var_c873665a > 0)
		{
			self.var_c873665a = self.var_c873665a - 0.005;
			namespace_3d5de9eb::function_748fd87f(self, 0, self.var_c873665a);
			namespace_3d5de9eb::function_7398d2c8(self, 0, self function_43cc4179());
			wait(0.016);
		}
	}
	self.var_c873665a = 0;
	namespace_3d5de9eb::function_cfb866d9(self, 0);
}

/*
	Name: function_fd89a017
	Namespace: namespace_502339f3
	Checksum: 0x43B5378B
	Offset: 0x2780
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_fd89a017(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self thread namespace_bdde9225::function_bca12b73("pstfx_watertransition");
	}
	else
	{
		self thread namespace_bdde9225::function_3d1a8db5();
	}
}

/*
	Name: function_85392f32
	Namespace: namespace_502339f3
	Checksum: 0x6257102E
	Offset: 0x2808
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_85392f32(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self function_8dedca9c(var_ec74b091, "cp_blackstation_zipline_loop_rumble");
	}
	else
	{
		self function_8a0ba272(var_ec74b091, "cp_blackstation_zipline_loop_rumble");
	}
}

/*
	Name: function_71f88fc
	Namespace: namespace_502339f3
	Checksum: 0x11525AA8
	Offset: 0x28A8
	Size: 0x7D
	Parameters: 1
	Flags: None
*/
function function_71f88fc(var_4bc288a0)
{
	switch(var_4bc288a0)
	{
		case 1:
		{
			function_71c4474e("cin_bla_01_01_intro_1st");
			break;
		}
		case 2:
		{
			break;
		}
		case 3:
		{
			break;
		}
		case 4:
		{
			function_71c4474e("p7_fxanim_cp_blackstation_apartment_collapse_bundle");
			break;
		}
	}
}

/*
	Name: function_42998a0f
	Namespace: namespace_502339f3
	Checksum: 0xC5C390A2
	Offset: 0x2930
	Size: 0x20B
	Parameters: 7
	Flags: None
*/
function function_42998a0f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		switch(var_9193c732)
		{
			case 1:
			{
				var_fc9f79e7 = "rain_light_se";
				self thread function_5c196beb(var_ec74b091, var_fc9f79e7);
				break;
			}
			case 2:
			{
				var_fc9f79e7 = "rain_med_se";
				self thread function_5c196beb(var_ec74b091, var_fc9f79e7);
				break;
			}
			case 3:
			{
				var_fc9f79e7 = "rain_drench_se";
				self thread function_5c196beb(var_ec74b091, var_fc9f79e7);
				break;
			}
			case 4:
			{
				var_fc9f79e7 = "rain_light_ne";
				self thread function_5c196beb(var_ec74b091, var_fc9f79e7);
				break;
			}
			case 5:
			{
				var_fc9f79e7 = "rain_med_ne";
				self thread function_5c196beb(var_ec74b091, var_fc9f79e7);
				break;
			}
			case 6:
			{
				var_fc9f79e7 = "rain_drench_ne";
				self thread function_5c196beb(var_ec74b091, var_fc9f79e7);
				break;
			}
		}
	}
	else if(isdefined(self.var_88aec2ed))
	{
		function_d555a113(var_ec74b091, self.var_88aec2ed);
		self.var_88aec2ed = undefined;
	}
	if(isdefined(self.var_c93ef955))
	{
		self.var_c93ef955 function_dc8c8404();
	}
}

/*
	Name: function_5c196beb
	Namespace: namespace_502339f3
	Checksum: 0x62462A5F
	Offset: 0x2B48
	Size: 0x16D
	Parameters: 2
	Flags: None
*/
function function_5c196beb(var_ec74b091, var_fc9f79e7)
{
	if(isdefined(self.var_88aec2ed))
	{
		function_d555a113(var_ec74b091, self.var_88aec2ed);
		self.var_88aec2ed = undefined;
	}
	if(isdefined(self.var_c93ef955))
	{
		self.var_c93ef955 function_dc8c8404();
	}
	self.var_c93ef955 = function_9b7fda5e(var_ec74b091, self.var_722885f3, "script_model");
	self.var_c93ef955 function_e48f905e("tag_origin");
	self.var_c93ef955.var_6ab6f4fd = self.var_6ab6f4fd;
	self.var_c93ef955 function_37f7858a(self);
	self.var_88aec2ed = function_da6acfd2(var_ec74b091, level.var_c1aa5253[var_fc9f79e7], self.var_c93ef955, "tag_origin");
	self waittill("hash_d5da096");
	if(isdefined(self.var_88aec2ed))
	{
		function_d555a113(var_ec74b091, self.var_88aec2ed);
		self.var_88aec2ed = undefined;
	}
}

/*
	Name: function_59e9894a
	Namespace: namespace_502339f3
	Checksum: 0x1BC5DD66
	Offset: 0x2CC0
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_59e9894a(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_tin_roof_panels_01_bundle");
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_tin_roof_panels_02_bundle");
	}
}

/*
	Name: function_db90ecbe
	Namespace: namespace_502339f3
	Checksum: 0xBC52EA96
	Offset: 0x2D50
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_db90ecbe(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_tin_roof_panels_01_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_tin_roof_panels_02_bundle");
	}
}

/*
	Name: function_33d0325b
	Namespace: namespace_502339f3
	Checksum: 0x8B4CDD34
	Offset: 0x2DE0
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_33d0325b(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_subway_tiles_bundle");
	}
}

/*
	Name: function_e722258b
	Namespace: namespace_502339f3
	Checksum: 0xD2CE386E
	Offset: 0x2E50
	Size: 0x123
	Parameters: 7
	Flags: None
*/
function function_e722258b(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	var_6bfe1586 = function_79c174a3(var_ec74b091);
	if(!isdefined(var_6bfe1586) || var_9193c732 != var_6bfe1586 function_c7f3ce11() + 1)
	{
		return;
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self), "Dev Block strings are not supported");
	#/
	level namespace_957e94ce::function_1ab5ebec("duplicaterender_registry_ready");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self), "Dev Block strings are not supported");
	#/
	self namespace_1c38f9cf::function_c4cc39ce(var_ec74b091, "keyline_active_red", "keyfill_active_red");
}

/*
	Name: function_ec1c5731
	Namespace: namespace_502339f3
	Checksum: 0x31B1E701
	Offset: 0x2F80
	Size: 0xCD
	Parameters: 7
	Flags: None
*/
function function_ec1c5731(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	switch(var_9193c732)
	{
		case 1:
		case 2:
		{
			function_f0a92694("port_water", 20);
			break;
		}
		case 3:
		{
			function_f0a92694("frogger_water", 64);
			break;
		}
		case default:
		{
			function_f0a92694("port_water", 0);
			break;
		}
	}
}

/*
	Name: function_218d833
	Namespace: namespace_502339f3
	Checksum: 0xF6B4E8EF
	Offset: 0x3058
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function function_218d833()
{
	level notify("hash_39c6460f");
	level endon("hash_215ac037");
	var_55fa7b94 = 20;
	var_96bac723 = 0.15;
	var_bd132462 = 0.05;
	var_416478aa = 0;
	while(!var_416478aa)
	{
		function_f0a92694("port_water", var_55fa7b94);
		if(var_55fa7b94 > var_96bac723)
		{
			var_55fa7b94 = var_55fa7b94 - var_96bac723;
			if(var_55fa7b94 <= var_96bac723)
			{
				var_416478aa = 1;
			}
		}
		wait(0.01);
	}
}

/*
	Name: function_176dacb
	Namespace: namespace_502339f3
	Checksum: 0xAB212F62
	Offset: 0x3130
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_176dacb()
{
	level notify("hash_215ac037");
	level endon("hash_39c6460f");
	var_55fa7b94 = 0;
	var_7b6b0a5b = 0.25;
	var_416478aa = 1;
	while(var_416478aa)
	{
		function_f0a92694("port_water", var_55fa7b94);
		if(var_55fa7b94 < 20)
		{
			var_55fa7b94 = var_55fa7b94 + var_7b6b0a5b;
			if(var_55fa7b94 >= 20)
			{
				var_416478aa = 0;
			}
		}
		wait(0.01);
	}
}

/*
	Name: function_aebcf025
	Namespace: namespace_502339f3
	Checksum: 0x79104FCA
	Offset: 0x31F8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_aebcf025(var_ec74b091)
{
	namespace_3d5de9eb::function_5c4aeccd(self);
}

/*
	Name: function_982d4d35
	Namespace: namespace_502339f3
	Checksum: 0xF5C32704
	Offset: 0x3228
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_982d4d35(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self function_c2931a36("evt_zipline_move", 0.5);
	}
	else
	{
		self function_4a1ecb6c(0.5);
	}
}

/*
	Name: function_989f7c26
	Namespace: namespace_502339f3
	Checksum: 0xF643A27C
	Offset: 0x32C0
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_989f7c26(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_8dedca9c(var_ec74b091, "tank_rumble");
	}
	else
	{
		self function_8a0ba272(var_ec74b091, "tank_rumble");
	}
}

/*
	Name: function_673254cc
	Namespace: namespace_502339f3
	Checksum: 0x2E290628
	Offset: 0x3358
	Size: 0x2FB
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_69554b3e("objective_igc", &function_a796eb5e, undefined, &function_40b9b738);
	namespace_1d795d47::function_69554b3e("objective_qzone", &function_39bffbde);
	namespace_1d795d47::function_69554b3e("objective_warlord_igc", &function_bb306d90);
	namespace_1d795d47::function_69554b3e("objective_warlord", &function_4c07b70a);
	namespace_1d795d47::function_69554b3e("objective_anchor_intro", &function_3cf0ef2b);
	namespace_1d795d47::function_69554b3e("objective_port_assault", &function_f5ac779c, undefined, &function_3aec2);
	namespace_1d795d47::function_69554b3e("objective_barge_assault", &function_def9d38e);
	namespace_1d795d47::function_69554b3e("objective_storm_surge", &function_68e5c597, undefined, &function_d78cf96d);
	namespace_1d795d47::function_69554b3e("objective_subway", &function_ec466e32);
	namespace_1d795d47::function_69554b3e("objective_police_station", &function_f3a694a6);
	namespace_1d795d47::function_69554b3e("objective_kane_intro", &function_4fbcb062, undefined, &function_d96d8db5);
	namespace_1d795d47::function_69554b3e("objective_comm_relay_traverse", &function_4cdd3a9a);
	namespace_1d795d47::function_69554b3e("objective_comm_relay", &function_9ba92728);
	namespace_1d795d47::function_69554b3e("objective_cross_debris", &function_f3ba72a4, undefined, &function_4d38ae0f);
	namespace_1d795d47::function_69554b3e("objective_blackstation_exterior", &function_112a3f23);
	namespace_1d795d47::function_69554b3e("objective_blackstation_interior", &function_6a18d1d4);
	namespace_1d795d47::function_69554b3e("objective_end_igc", &function_6a18d1d4);
}

/*
	Name: function_a796eb5e
	Namespace: namespace_502339f3
	Checksum: 0x83FC7EDB
	Offset: 0x3660
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function function_a796eb5e(var_b04bc952, var_74cd64bc)
{
	level thread function_42c55e18();
	level thread function_9570c674();
	function_69a58458("frogger_water", 0);
	function_69a58458("port_water", 0);
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_qzone_ground_debris_bundle");
}

/*
	Name: function_40b9b738
	Namespace: namespace_502339f3
	Checksum: 0x21770523
	Offset: 0x3700
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_40b9b738(var_b04bc952, var_74cd64bc)
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_lamp_hanging_sin_lamppost_02_bundle");
}

/*
	Name: function_39bffbde
	Namespace: namespace_502339f3
	Checksum: 0xC28F310D
	Offset: 0x3740
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_39bffbde(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_42c55e18();
		level thread function_9570c674();
		function_69a58458("frogger_water", 0);
		function_69a58458("port_water", 0);
		level namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_qzone_ground_debris_bundle");
	}
}

/*
	Name: function_bb306d90
	Namespace: namespace_502339f3
	Checksum: 0xFB0B3B5
	Offset: 0x37E8
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_bb306d90(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_42c55e18();
		function_69a58458("frogger_water", 0);
		function_69a58458("port_water", 0);
	}
}

/*
	Name: function_4c07b70a
	Namespace: namespace_502339f3
	Checksum: 0x99D1810F
	Offset: 0x3858
	Size: 0x7B
	Parameters: 2
	Flags: None
*/
function function_4c07b70a(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_42c55e18();
		function_69a58458("frogger_water", 0);
		function_69a58458("port_water", 0);
	}
	level thread function_3802e537();
}

/*
	Name: function_3cf0ef2b
	Namespace: namespace_502339f3
	Checksum: 0x8A8691F9
	Offset: 0x38E0
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_3cf0ef2b(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_42c55e18();
		level thread function_3802e537();
		function_69a58458("frogger_water", 0);
	}
	function_69a58458("port_water", 1);
	level thread function_d2829c38();
}

/*
	Name: function_f5ac779c
	Namespace: namespace_502339f3
	Checksum: 0x11672B18
	Offset: 0x3988
	Size: 0xE3
	Parameters: 2
	Flags: None
*/
function function_f5ac779c(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_42c55e18();
		level thread function_d2829c38();
		level thread function_3802e537();
		function_69a58458("frogger_water", 0);
		function_69a58458("port_water", 1);
		level namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_blackstation_boatroom_bundle", &function_a3efe3eb, "play");
	}
	level thread function_f8ff4031();
}

/*
	Name: function_3aec2
	Namespace: namespace_502339f3
	Checksum: 0x99AC4AE7
	Offset: 0x3A78
	Size: 0x233
	Parameters: 2
	Flags: None
*/
function function_3aec2(var_b04bc952, var_74cd64bc)
{
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_tents_military_end_l_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_tents_military_end_l_dbl_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_tents_military_end_r_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_tents_military_end_r_dbl_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_tents_military_end_r_open_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_tents_military_end_side_dbl_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_tents_white_military_end_l_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_tents_white_military_end_r_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_tents_white_military_end_side_dbl_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_medical_divider_01_s5_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_medical_divider_02_s5_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_trash_cardboard_box_04_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_trash_cardboard_box_03_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_anchor_beginning_idle_01_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_anchor_beginning_idle_02_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_anchor_beginning_idle_03_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_anchor_beginning_idle_04_bundle", 1);
}

/*
	Name: function_def9d38e
	Namespace: namespace_502339f3
	Checksum: 0x2AB16242
	Offset: 0x3CB8
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_def9d38e(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_d2829c38();
		level thread function_f8ff4031();
		function_69a58458("frogger_water", 0);
		function_69a58458("port_water", 1);
	}
	level thread function_1bbce270();
}

/*
	Name: function_68e5c597
	Namespace: namespace_502339f3
	Checksum: 0x4C51908
	Offset: 0x3D60
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function function_68e5c597(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_d2829c38();
		level thread function_1bbce270();
		level thread function_f8ff4031();
		function_69a58458("frogger_water", 0);
		function_69a58458("port_water", 1);
	}
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_tanker_building_smash_bundle");
	level thread function_6f3570de();
}

/*
	Name: function_d78cf96d
	Namespace: namespace_502339f3
	Checksum: 0x686C31F6
	Offset: 0x3E40
	Size: 0x233
	Parameters: 2
	Flags: None
*/
function function_d78cf96d(var_b04bc952, var_74cd64bc)
{
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_floating_buoy_02_upright_fast_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_floating_buoy_03_roll_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_floating_buoy_03_upright_fast_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_boatroom_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_tanker_building_smash_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_pier_board_kit_02_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_pier_board_kit_03_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_pier_board_kit_04_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_pier_wire_rt_01_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_pier_wire_rt_02_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_pier_wire_rt_03_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_pier_wire_rt_04_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_pier_wire_lt_01_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_pier_wire_lt_02_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_pier_wire_lt_03_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_pier_wire_lt_04_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_pier_container_bundle", 1);
}

/*
	Name: function_ec466e32
	Namespace: namespace_502339f3
	Checksum: 0xB0E3C2AA
	Offset: 0x4080
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_ec466e32(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		function_69a58458("frogger_water", 0);
	}
	level thread function_5005007a();
	function_69a58458("port_water", 0);
}

/*
	Name: function_f3a694a6
	Namespace: namespace_502339f3
	Checksum: 0xC80BE1A3
	Offset: 0x40F0
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_f3a694a6(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_5005007a();
		function_69a58458("frogger_water", 0);
		function_69a58458("port_water", 0);
	}
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_rope_scaffold_01_bundle");
}

/*
	Name: function_4fbcb062
	Namespace: namespace_502339f3
	Checksum: 0x63D517A4
	Offset: 0x4180
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_4fbcb062(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		function_69a58458("frogger_water", 0);
		function_69a58458("port_water", 0);
	}
}

/*
	Name: function_d96d8db5
	Namespace: namespace_502339f3
	Checksum: 0x187A66FA
	Offset: 0x41D8
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_d96d8db5(var_b04bc952, var_74cd64bc)
{
	level thread function_96838a27();
	level thread namespace_cc27597::function_43718187("cin_bla_12_01_cross_debris_hanging_shortrope");
	level thread namespace_cc27597::function_43718187("cin_bla_12_01_cross_debris_hanging_medrope");
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_wire_sparking_med_thick_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_wire_sparking_sml_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_rope_scaffold_01_bundle");
}

/*
	Name: function_4cdd3a9a
	Namespace: namespace_502339f3
	Checksum: 0x7471D98F
	Offset: 0x42B0
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_4cdd3a9a(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		function_69a58458("port_water", 0);
	}
	function_69a58458("frogger_water", 1);
}

/*
	Name: function_9ba92728
	Namespace: namespace_502339f3
	Checksum: 0xEA9D1968
	Offset: 0x4310
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_9ba92728(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		function_69a58458("frogger_water", 0);
		function_69a58458("port_water", 0);
	}
}

/*
	Name: function_f3ba72a4
	Namespace: namespace_502339f3
	Checksum: 0xFBDC1974
	Offset: 0x4368
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_f3ba72a4(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		function_69a58458("frogger_water", 0);
		function_69a58458("port_water", 0);
	}
}

/*
	Name: function_4d38ae0f
	Namespace: namespace_502339f3
	Checksum: 0x99A047C6
	Offset: 0x43C0
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_4d38ae0f(var_b04bc952, var_74cd64bc)
{
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_rope_scaffold_01_bundle", 1);
}

/*
	Name: function_112a3f23
	Namespace: namespace_502339f3
	Checksum: 0xC79D449C
	Offset: 0x4400
	Size: 0x15B
	Parameters: 2
	Flags: None
*/
function function_112a3f23(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		function_69a58458("frogger_water", 0);
		function_69a58458("port_water", 0);
	}
	level thread function_42c55e18();
	level thread function_13a8d1c5();
	level thread namespace_cc27597::function_fcf56ab5("cin_bla_12_01_cross_debris_hanging_shortrope", 1);
	level thread namespace_cc27597::function_fcf56ab5("cin_bla_12_01_cross_debris_hanging_medrope", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_wire_sparking_med_thick_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_wire_sparking_sml_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_rope_scaffold_01_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_river_debris01_bundle", 1);
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_river_debris02_bundle", 1);
}

/*
	Name: function_6a18d1d4
	Namespace: namespace_502339f3
	Checksum: 0xCA1FE322
	Offset: 0x4568
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_6a18d1d4(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		function_69a58458("frogger_water", 0);
		function_69a58458("port_water", 0);
	}
}

/*
	Name: function_9570c674
	Namespace: namespace_502339f3
	Checksum: 0xFC48E597
	Offset: 0x45C0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_9570c674()
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_medical_divider_01_s5_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_medical_divider_02_s5_bundle");
	wait(0.016);
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_trash_cardboard_box_04_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_trash_cardboard_box_03_bundle");
}

/*
	Name: function_42c55e18
	Namespace: namespace_502339f3
	Checksum: 0xDC8609A9
	Offset: 0x4658
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_42c55e18()
{
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_tents_military_end_l_bundle");
	wait(0.016);
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_tents_military_end_l_dbl_bundle");
	wait(0.016);
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_tents_military_end_r_bundle");
	wait(0.016);
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_tents_military_end_r_dbl_bundle");
	wait(0.016);
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_tents_military_end_r_open_bundle");
	wait(0.016);
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_tents_military_end_side_dbl_bundle");
	wait(0.016);
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_tents_white_military_end_l_bundle");
	wait(0.016);
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_tents_white_military_end_r_bundle");
	wait(0.016);
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_tents_white_military_end_side_dbl_bundle");
}

/*
	Name: function_d2829c38
	Namespace: namespace_502339f3
	Checksum: 0x539C1279
	Offset: 0x47C8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_d2829c38()
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_floating_buoy_02_upright_fast_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_floating_buoy_03_roll_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_floating_buoy_03_upright_fast_bundle");
}

/*
	Name: function_3802e537
	Namespace: namespace_502339f3
	Checksum: 0xE4163080
	Offset: 0x4838
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_3802e537()
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_anchor_beginning_idle_01_bundle");
	wait(0.016);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_anchor_beginning_idle_02_bundle");
	wait(0.016);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_anchor_beginning_idle_03_bundle");
	wait(0.016);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_anchor_beginning_idle_04_bundle");
}

/*
	Name: function_5005007a
	Namespace: namespace_502339f3
	Checksum: 0xFFE1ADAE
	Offset: 0x48E0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_5005007a()
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_wire_sparking_sml_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_wire_sparking_med_thick_bundle");
}

/*
	Name: function_96838a27
	Namespace: namespace_502339f3
	Checksum: 0xBF11EFAE
	Offset: 0x4930
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_96838a27()
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_river_debris01_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_river_debris02_bundle");
}

/*
	Name: function_13a8d1c5
	Namespace: namespace_502339f3
	Checksum: 0xFFE11D20
	Offset: 0x4980
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_13a8d1c5()
{
	level thread namespace_cc27597::function_43718187("blackstation_exterior_shutters");
}

/*
	Name: function_1bbce270
	Namespace: namespace_502339f3
	Checksum: 0x29C95A65
	Offset: 0x49B0
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_1bbce270()
{
	level endon("hash_9bfd16b7");
	var_10ec3c1e = namespace_14b42b8a::function_7faf4c39("pulse_barge", "targetname");
	while(1)
	{
		foreach(var_ece853e in var_10ec3c1e)
		{
			function_534b3cba(0, var_ece853e.var_722885f3, 400, 0, 0.01, 0, 0, 0, 1);
		}
		wait(1);
	}
}

/*
	Name: function_ffa95b91
	Namespace: namespace_502339f3
	Checksum: 0x53F8251E
	Offset: 0x4AE8
	Size: 0xEB
	Parameters: 7
	Flags: None
*/
function function_ffa95b91(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		if(!function_2017fed1(var_ec74b091))
		{
			self thread function_fbc6b3e8(var_ec74b091, "wind_effects");
		}
	}
	else if(var_9193c732 == 2)
	{
		if(!function_2017fed1(var_ec74b091))
		{
			self thread function_fbc6b3e8(var_ec74b091, "wind_effects_anchor");
		}
	}
	else
	{
		self thread function_26d7266e(var_ec74b091);
	}
}

/*
	Name: function_fbc6b3e8
	Namespace: namespace_502339f3
	Checksum: 0x37A7B375
	Offset: 0x4BE0
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_fbc6b3e8(var_ec74b091, var_fc9f79e7)
{
	self endon("hash_128f8789");
	self.var_ac46de76 = function_2e9c26ef(var_ec74b091, level.var_c1aa5253[var_fc9f79e7], (0, 0, 0), (1, 0, 0), (0, 0, 1));
	self thread function_82b37a9c(var_ec74b091);
}

/*
	Name: function_26d7266e
	Namespace: namespace_502339f3
	Checksum: 0xAD607D3
	Offset: 0x4C58
	Size: 0x41
	Parameters: 1
	Flags: None
*/
function function_26d7266e(var_ec74b091)
{
	if(isdefined(self.var_ac46de76))
	{
		function_d555a113(var_ec74b091, self.var_ac46de76);
	}
	self notify("hash_944ec624");
}

/*
	Name: function_82b37a9c
	Namespace: namespace_502339f3
	Checksum: 0x56B681C9
	Offset: 0x4CA8
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_82b37a9c(var_ec74b091)
{
	self endon("hash_944ec624");
	self waittill("hash_128f8789");
	self function_26d7266e(var_ec74b091);
}

/*
	Name: function_c170b293
	Namespace: namespace_502339f3
	Checksum: 0x55B94807
	Offset: 0x4CF0
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_c170b293(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		namespace_80983c42::function_80983c42("subway_underwater_volumetric");
	}
	else
	{
		namespace_80983c42::function_67e7a937("subway_underwater_volumetric");
	}
}

/*
	Name: function_adfd4203
	Namespace: namespace_502339f3
	Checksum: 0x2BE3CDD1
	Offset: 0x4D78
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_adfd4203(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		namespace_80983c42::function_80983c42("subway_entrance_crash");
	}
	else
	{
		namespace_80983c42::function_67e7a937("subway_entrance_crash");
	}
}

/*
	Name: function_6f3570de
	Namespace: namespace_502339f3
	Checksum: 0x91D5B736
	Offset: 0x4E00
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_6f3570de()
{
	level namespace_ad23e503::function_1ab5ebec("building_break");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_tanker_building_smash_bundle");
}

/*
	Name: function_f354307b
	Namespace: namespace_502339f3
	Checksum: 0x44759ECD
	Offset: 0x4E50
	Size: 0x137
	Parameters: 7
	Flags: None
*/
function function_f354307b(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(self.var_2e7c1306))
	{
		var_c6107c9b = "wave_trigger_jnt";
		self.var_2e7c1306 = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", self function_d48f2ab3(var_c6107c9b), self function_cd1d99bd(var_c6107c9b));
		self.var_2e7c1306 function_37f7858a(self, var_c6107c9b);
		self.var_2e7c1306 function_d432d87a(0.5, 500, 1500, 1, 80);
	}
	if(var_9193c732)
	{
		self.var_2e7c1306.var_5ad95f6a = 1;
	}
	else
	{
		self.var_2e7c1306.var_5ad95f6a = 0;
	}
}

/*
	Name: function_fedbe3ab
	Namespace: namespace_502339f3
	Checksum: 0x8991963C
	Offset: 0x4F90
	Size: 0x6B
	Parameters: 7
	Flags: None
*/
function function_fedbe3ab(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["water_spash_lrg"], self, "tag_origin");
}

/*
	Name: function_a3efe3eb
	Namespace: namespace_502339f3
	Checksum: 0x9A46CE0A
	Offset: 0x5008
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_a3efe3eb(var_c77d2837)
{
	var_c77d2837["boat_room_glass"] function_3d6438ae("set_anim", "p7_fxanim_cp_blackstation_boatroom_glass_sanim", "set_shot", "default", "pause", "goto_end");
}

/*
	Name: function_f8ff4031
	Namespace: namespace_502339f3
	Checksum: 0x903C2D09
	Offset: 0x5070
	Size: 0x521
	Parameters: 0
	Flags: None
*/
function function_f8ff4031()
{
	var_179127c2 = [];
	if(!isdefined(var_179127c2))
	{
		var_179127c2 = [];
	}
	else if(!function_6e2770d8(var_179127c2))
	{
		var_179127c2 = function_84970cc4(var_179127c2);
	}
	var_179127c2[var_179127c2.size] = "p7_fxanim_cp_blackstation_pier_board_kit_02_bundle";
	if(!isdefined(var_179127c2))
	{
		var_179127c2 = [];
	}
	else if(!function_6e2770d8(var_179127c2))
	{
		var_179127c2 = function_84970cc4(var_179127c2);
	}
	var_179127c2[var_179127c2.size] = "p7_fxanim_cp_blackstation_pier_board_kit_03_bundle";
	if(!isdefined(var_179127c2))
	{
		var_179127c2 = [];
	}
	else if(!function_6e2770d8(var_179127c2))
	{
		var_179127c2 = function_84970cc4(var_179127c2);
	}
	var_179127c2[var_179127c2.size] = "p7_fxanim_cp_blackstation_pier_board_kit_04_bundle";
	if(!isdefined(var_179127c2))
	{
		var_179127c2 = [];
	}
	else if(!function_6e2770d8(var_179127c2))
	{
		var_179127c2 = function_84970cc4(var_179127c2);
	}
	var_179127c2[var_179127c2.size] = "p7_fxanim_cp_blackstation_pier_wire_rt_01_bundle";
	if(!isdefined(var_179127c2))
	{
		var_179127c2 = [];
	}
	else if(!function_6e2770d8(var_179127c2))
	{
		var_179127c2 = function_84970cc4(var_179127c2);
	}
	var_179127c2[var_179127c2.size] = "p7_fxanim_cp_blackstation_pier_wire_rt_02_bundle";
	if(!isdefined(var_179127c2))
	{
		var_179127c2 = [];
	}
	else if(!function_6e2770d8(var_179127c2))
	{
		var_179127c2 = function_84970cc4(var_179127c2);
	}
	var_179127c2[var_179127c2.size] = "p7_fxanim_cp_blackstation_pier_wire_rt_03_bundle";
	if(!isdefined(var_179127c2))
	{
		var_179127c2 = [];
	}
	else if(!function_6e2770d8(var_179127c2))
	{
		var_179127c2 = function_84970cc4(var_179127c2);
	}
	var_179127c2[var_179127c2.size] = "p7_fxanim_cp_blackstation_pier_wire_rt_04_bundle";
	if(!isdefined(var_179127c2))
	{
		var_179127c2 = [];
	}
	else if(!function_6e2770d8(var_179127c2))
	{
		var_179127c2 = function_84970cc4(var_179127c2);
	}
	var_179127c2[var_179127c2.size] = "p7_fxanim_cp_blackstation_pier_wire_lt_01_bundle";
	if(!isdefined(var_179127c2))
	{
		var_179127c2 = [];
	}
	else if(!function_6e2770d8(var_179127c2))
	{
		var_179127c2 = function_84970cc4(var_179127c2);
	}
	var_179127c2[var_179127c2.size] = "p7_fxanim_cp_blackstation_pier_wire_lt_02_bundle";
	if(!isdefined(var_179127c2))
	{
		var_179127c2 = [];
	}
	else if(!function_6e2770d8(var_179127c2))
	{
		var_179127c2 = function_84970cc4(var_179127c2);
	}
	var_179127c2[var_179127c2.size] = "p7_fxanim_cp_blackstation_pier_wire_lt_03_bundle";
	if(!isdefined(var_179127c2))
	{
		var_179127c2 = [];
	}
	else if(!function_6e2770d8(var_179127c2))
	{
		var_179127c2 = function_84970cc4(var_179127c2);
	}
	var_179127c2[var_179127c2.size] = "p7_fxanim_cp_blackstation_pier_wire_lt_04_bundle";
	if(!isdefined(var_179127c2))
	{
		var_179127c2 = [];
	}
	else if(!function_6e2770d8(var_179127c2))
	{
		var_179127c2 = function_84970cc4(var_179127c2);
	}
	var_179127c2[var_179127c2.size] = "p7_fxanim_cp_blackstation_pier_container_bundle";
	foreach(var_a3d1f031 in var_179127c2)
	{
		level thread namespace_cc27597::function_43718187(var_a3d1f031);
		wait(0.016);
	}
}

/*
	Name: function_5d2e29ca
	Namespace: namespace_502339f3
	Checksum: 0x3BD60DBF
	Offset: 0x55A0
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_5d2e29ca(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_6c1294b8("phys_buoyancy", 1);
	}
	else
	{
		function_6c1294b8("phys_buoyancy", 0);
	}
}

/*
	Name: function_dadc58c3
	Namespace: namespace_502339f3
	Checksum: 0x75ACF0EB
	Offset: 0x5630
	Size: 0x5B
	Parameters: 7
	Flags: None
*/
function function_dadc58c3(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	level namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_qzone_ground_debris_bundle");
}

/*
	Name: function_65582e9e
	Namespace: namespace_502339f3
	Checksum: 0x558A1D02
	Offset: 0x5698
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_65582e9e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self notify("hash_3836b0e");
		self notify("hash_832f9942");
	}
	else
	{
		self thread namespace_9e14c79a::function_3836b0e();
		self thread namespace_9e14c79a::function_832f9942();
	}
}

/*
	Name: function_40788165
	Namespace: namespace_502339f3
	Checksum: 0x632D1F1B
	Offset: 0x5730
	Size: 0xC3
	Parameters: 7
	Flags: None
*/
function function_40788165(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self thread namespace_9e14c79a::function_9e208c0d();
		function_3cbcdf3a(var_ec74b091, 1, 0.15, 0.9, 0, 100, 100);
	}
	else
	{
		self thread namespace_9e14c79a::function_baecedf5();
		function_fa59de5f(var_ec74b091);
	}
}

