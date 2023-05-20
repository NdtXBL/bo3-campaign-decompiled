#using scripts\codescripts\struct;
#using scripts\cp\_bb;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_globallogic_spawn;
#using scripts\cp\gametypes\_healthoverlay;
#using scripts\cp\gametypes\coop;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\demo_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_564407fb;

/*
	Name: function_2dc19561
	Namespace: namespace_564407fb
	Checksum: 0x1688B90
	Offset: 0x6B8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("laststand", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_564407fb
	Checksum: 0x7BBF750C
	Offset: 0x6F8
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	if(level.var_cd724008 == "frontend")
	{
		return;
	}
	level.var_1f6bae66 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < 4; var_c957f6b6++)
	{
		level.var_1f6bae66[var_c957f6b6] = "laststand_update" + var_c957f6b6;
		namespace_71e9cb84::function_50f16166("world", level.var_1f6bae66[var_c957f6b6], 1, 5, "counter");
	}
	if(!isdefined(level.var_a6179873))
	{
		level.var_a6179873 = &function_4e4dab57;
	}
	level.var_5f7fff60 = function_c4d5ec1f("syrette");
	if(!isdefined(level.var_3a87bd96))
	{
		level.var_3a87bd96 = function_c4d5ec1f("noweapon");
	}
	level thread function_693b08c9();
	level.var_e63a55a5 = 0;
	level.var_c037db3c = 110;
	level.var_76f2da86 = 4;
	level.var_96a7eeed = 120;
	level.var_f0aa5b7d = 280;
	if(function_6f1ebe57("revive_trigger_radius") == "")
	{
		function_6c1294b8("revive_trigger_radius", "100");
	}
	level.var_da98bf76 = 0;
	if(isdefined(level.var_be177839))
	{
		function_9aa169f1(level.var_be177839);
	}
	else
	{
		function_9aa169f1("zombie_last_stand");
	}
}

/*
	Name: function_bf9245e0
	Namespace: namespace_564407fb
	Checksum: 0x90D7B20F
	Offset: 0x908
	Size: 0xE3
	Parameters: 9
	Flags: None
*/
function function_bf9245e0(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_b2e5f7d2)
{
	if(isdefined(var_a0ad4f34) && function_65f192a6(var_a0ad4f34) && var_a0ad4f34 != self)
	{
		var_a0ad4f34.var_ec0b278c++;
		if(isdefined(var_dfcc01fd))
		{
			var_a362aff = var_dfcc01fd;
			var_a0ad4f34 function_1f4288c0(var_a362aff, "kills", 1);
		}
	}
	self function_357edc35();
}

/*
	Name: function_357edc35
	Namespace: namespace_564407fb
	Checksum: 0x5E2815BC
	Offset: 0x9F8
	Size: 0x11D
	Parameters: 0
	Flags: None
*/
function function_357edc35()
{
	self.var_c60db088++;
	self function_aa67c13b("INCAPS", 1);
	if(isdefined(function_9065d6ea()))
	{
		var_e7ce5f85 = self function_84368297("PlayerStatsList", "INCAPS", "statValue");
		self function_b26abbde("INCAPS", var_e7ce5f85);
		self.var_58ef604f = var_e7ce5f85 - self function_84368297("PlayerStatsByMap", function_9065d6ea(), "currentStats", "INCAPS");
		/#
			namespace_33b293fd::function_a7ee953(self.var_58ef604f > 0);
		#/
		self.var_44fb8955["incaps"] = self.var_58ef604f;
	}
}

/*
	Name: function_51061490
	Namespace: namespace_564407fb
	Checksum: 0x29164F23
	Offset: 0xB20
	Size: 0x37
	Parameters: 0
	Flags: Private
*/
function private function_51061490()
{
	/#
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			return 1;
		}
	#/
	return 0;
}

/*
	Name: function_1bbd62
	Namespace: namespace_564407fb
	Checksum: 0x440C5589
	Offset: 0xB60
	Size: 0x6A3
	Parameters: 9
	Flags: None
*/
function function_1bbd62(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_8866d74a)
{
	if(isdefined(self.var_32218fc7) && self.var_32218fc7)
	{
		return;
	}
	self notify("hash_68cc29b");
	if(isdefined(level.var_c7048fc8))
	{
		self [[level.var_c7048fc8]](var_51e6a548, var_a0ad4f34, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_8866d74a);
	}
	if(self function_38a9aff8())
	{
		return;
	}
	if(level.var_2395e945.size == 1 && self.var_dc4a16f6 == 0 && !function_51061490())
	{
		return;
	}
	self function_49876a9e(game["menu_changeclass"]);
	self namespace_71e9cb84::function_e9c3870b("mobile_armory_cac", 0);
	if(!self namespace_82b91a51::function_31827fe8())
	{
		self namespace_82b91a51::function_ee182f5d();
	}
	self.var_e3f4954d = function_a8fb77bd();
	self.var_afe5253c = function_a8fb77bd();
	self.var_e3f4954d.var_51e6a548 = var_51e6a548;
	self.var_afe5253c.var_a21e8eb8 = -1;
	if(isdefined(var_51e6a548))
	{
		self.var_afe5253c.var_a21e8eb8 = var_51e6a548 function_c7f3ce11();
	}
	self.var_afe5253c.var_ca793e94 = -1;
	if(isdefined(var_a0ad4f34))
	{
		self.var_afe5253c.var_ca793e94 = var_51e6a548 function_c7f3ce11();
	}
	self.var_e3f4954d.var_a0ad4f34 = var_a0ad4f34;
	self.var_e3f4954d.var_f9a179ed = var_f9a179ed;
	self.var_e3f4954d.var_ba36487d = var_ba36487d;
	self.var_e3f4954d.var_ac1ce8c8 = var_dfcc01fd;
	self.var_e3f4954d.var_e8bb43ee = var_e8bb43ee;
	self.var_e3f4954d.var_a77ad8eb = var_a77ad8eb;
	self.var_e3f4954d.var_c86dbf56 = GetTime();
	self thread function_bf9245e0(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_8866d74a);
	namespace_d8129fdd::function_945c54c5("enter_last_stand", self);
	self function_bfe21698(1, GetTime(), self.var_722885f3, namespace_1d795d47::function_52c50cb8());
	if(isdefined(level.var_a6179873))
	{
		[[level.var_a6179873]](var_51e6a548, var_a0ad4f34, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_8866d74a);
	}
	self.var_3a90f16b = 1;
	self.var_564407fb = 1;
	self.var_255b9315 = 1;
	self function_83fd42b5();
	self.var_85c35cc9 = undefined;
	self namespace_82b91a51::function_c72856fc(0);
	namespace_dabbe128::function_dabbe128("hash_6751ab5b");
	if(!(isdefined(self.var_445a566d) && self.var_445a566d))
	{
		self function_efcdbee7();
	}
	else
	{
		self function_2fe6d6e1();
	}
	if(!isdefined(level.var_83405e54) || !level.var_83405e54)
	{
		self thread function_188d6155();
	}
	self function_30312660();
	if(!isdefined(level.var_83405e54) || !level.var_83405e54)
	{
		self function_38ec1891();
	}
	if(isdefined(level.var_ede2ac9e) && level.var_ede2ac9e && function_3f10449f().size > 1)
	{
		if(!isdefined(level.var_d53ebd4e) || self [[level.var_d53ebd4e]]())
		{
			self thread function_32b4342();
		}
	}
	if(isdefined(self.var_46793f8f))
	{
		self.var_46793f8f = [];
	}
	if(level.var_da98bf76 && var_8866d74a != -1)
	{
		self thread function_38c5da09();
	}
	else
	{
		var_b939db43 = function_f3087faa("player_lastStandBleedoutTime");
		if(var_8866d74a != 0)
		{
			if(var_8866d74a == -1)
			{
				var_8866d74a = 0;
			}
			var_b939db43 = var_8866d74a;
		}
		level namespace_71e9cb84::function_331efedc("laststand_update" + self function_c7f3ce11(), 30);
		self thread function_53795dc2(var_b939db43);
	}
	namespace_93ed41ec::function_20ea24d9("player_downed", GetTime(), self);
	self notify("hash_5cc39b7a");
	self thread function_3926472a();
	self thread function_d4eb424f();
	self thread function_f6242780();
	self thread function_fb3dd978();
}

/*
	Name: function_fb3dd978
	Namespace: namespace_564407fb
	Checksum: 0x94689A8A
	Offset: 0x1210
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_fb3dd978()
{
	self endon("hash_90831b9e");
	self endon("hash_643a7daf");
	self waittill("hash_128f8789");
	self function_2fe6d6e1();
}

/*
	Name: function_3926472a
	Namespace: namespace_564407fb
	Checksum: 0x1D5A518F
	Offset: 0x1258
	Size: 0x3D
	Parameters: 0
	Flags: None
*/
function function_3926472a()
{
	self endon("hash_90831b9e");
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	wait(1);
	self notify("hash_5cc39b7a");
}

/*
	Name: function_515f3287
	Namespace: namespace_564407fb
	Checksum: 0x9034C2EC
	Offset: 0x12A0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_515f3287()
{
	self endon("hash_1194c978");
	while(!self function_be4a4b0d())
	{
		wait(0.05);
	}
}

/*
	Name: function_188d6155
	Namespace: namespace_564407fb
	Checksum: 0x4711B1ED
	Offset: 0x12E0
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_188d6155()
{
	self endon("hash_55838fcd");
	self endon("hash_643a7daf");
	self endon("hash_90831b9e");
	while(1)
	{
		self waittill("hash_1194c978", var_c00374fd);
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self.var_3a87bd96));
		#/
		/#
			namespace_33b293fd::function_a7ee953(self.var_3a87bd96 != level.var_6c3e6703);
		#/
		if(var_c00374fd == self.var_3a87bd96)
		{
			break;
		}
		else
		{
			var_1eb3723 = self function_21995b5a(1);
			self.var_c26d3b77 = self function_48c6a3a2();
			if(self function_3b370451() || self namespace_175490fb::function_1be27df7())
			{
				var_d646ce1c = self function_da26566c();
				if(isdefined(var_d646ce1c) && var_d646ce1c.size > 0)
				{
					self.var_c26d3b77 = var_d646ce1c[0];
					self function_9785d11(self.var_c26d3b77);
				}
			}
			self function_927e3c75(self.var_c26d3b77);
		}
	}
	self function_515f3287();
	self function_b308f533(0);
	self.var_255b9315 = 0;
	self function_4890e520();
	self namespace_82b91a51::function_c72856fc(1);
}

/*
	Name: function_30312660
	Namespace: namespace_564407fb
	Checksum: 0x994AC592
	Offset: 0x14F8
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_30312660()
{
	var_1eb3723 = self function_21995b5a(1);
	self.var_c26d3b77 = self function_48c6a3a2();
	if(self function_3b370451() || self namespace_175490fb::function_1be27df7())
	{
		var_d646ce1c = self function_da26566c();
		if(isdefined(var_d646ce1c) && var_d646ce1c.size > 0)
		{
			self.var_c26d3b77 = var_d646ce1c[0];
			self function_9785d11(self.var_c26d3b77);
		}
	}
	self function_927e3c75(self.var_c26d3b77);
	self.var_3a87bd96 = undefined;
	if(!isdefined(self.var_3a87bd96))
	{
		self.var_3a87bd96 = level.var_3a87bd96;
	}
	if(isdefined(self.var_deb71c1e))
	{
		self.var_3a87bd96 = self.var_deb71c1e;
	}
	if(isdefined(level.var_f7507137))
	{
		[[level.var_f7507137]]();
	}
	self notify("hash_7b151096");
}

/*
	Name: function_b308f533
	Namespace: namespace_564407fb
	Checksum: 0x97EE6C0C
	Offset: 0x1670
	Size: 0x16F
	Parameters: 1
	Flags: None
*/
function function_b308f533(var_24621d3b)
{
	if(!isdefined(var_24621d3b))
	{
		var_24621d3b = 1;
	}
	if(isdefined(self.var_3a87bd96))
	{
		self function_1f3745c0(self.var_3a87bd96);
	}
	self function_5e6740a8(0);
	self function_6c8f914f();
	if(var_24621d3b)
	{
		self function_4b9f6977();
	}
	if(isdefined(self.var_c26d3b77) && self.var_c26d3b77 != level.var_6c3e6703 && self function_2103ff4b(self.var_c26d3b77))
	{
		self function_cb53a41e(self.var_c26d3b77);
	}
	else
	{
		var_d646ce1c = self function_da26566c();
		if(isdefined(var_d646ce1c) && var_d646ce1c.size > 0)
		{
			self function_cb53a41e(var_d646ce1c[0]);
		}
	}
	if(isdefined(level.var_4c76230a))
	{
		[[level.var_4c76230a]]();
	}
}

/*
	Name: function_9e43f7f9
	Namespace: namespace_564407fb
	Checksum: 0x53493740
	Offset: 0x17E8
	Size: 0x103
	Parameters: 2
	Flags: None
*/
function function_9e43f7f9(var_dc213294, var_3012e872)
{
	self endon("hash_ed3423ee");
	var_273f42da = var_dc213294.var_273f42da;
	var_dc213294 namespace_82b91a51::function_5b7e3888("disconnect", "game_ended", "death");
	if(isdefined(var_273f42da))
	{
		var_273f42da function_dc8c8404();
	}
	self function_4a66f284();
	if(isdefined(self.var_30d551a2))
	{
		self.var_30d551a2 namespace_724a4794::function_9c3abbf4();
	}
	if(isdefined(self.var_fca62492))
	{
		self.var_fca62492 function_89cd542d();
	}
	self function_b6822e5a(var_3012e872);
}

/*
	Name: function_eef372cb
	Namespace: namespace_564407fb
	Checksum: 0x622E8813
	Offset: 0x18F8
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_eef372cb(var_dc213294)
{
	self endon("hash_ed3423ee");
	var_dc213294 namespace_82b91a51::function_5b7e3888("disconnect", "zombified", "stop_revive_trigger");
	self.var_eae9bf9--;
	if(0 > self.var_eae9bf9)
	{
		self.var_eae9bf9 = 0;
	}
}

/*
	Name: function_38ec1891
	Namespace: namespace_564407fb
	Checksum: 0x854E5097
	Offset: 0x1968
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function function_38ec1891()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_3a87bd96));
	#/
	/#
		namespace_33b293fd::function_a7ee953(self.var_3a87bd96 != level.var_6c3e6703);
	#/
	self function_860a040a(self.var_3a87bd96);
	self function_704b802a(self.var_3a87bd96);
	self function_cb53a41e(self.var_3a87bd96);
	if(isdefined(level.var_d33a5232))
	{
		[[level.var_d33a5232]]();
	}
}

/*
	Name: function_ee6922c8
	Namespace: namespace_564407fb
	Checksum: 0x7D270D12
	Offset: 0x1A38
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_ee6922c8()
{
	self.var_b939db43 = self.var_b939db43 - 1;
	wait(1);
	while(isdefined(self.var_273f42da) && isdefined(self.var_273f42da.var_ae15c5db) && self.var_273f42da.var_ae15c5db == 1)
	{
		wait(0.1);
	}
}

/*
	Name: function_c690c6b2
	Namespace: namespace_564407fb
	Checksum: 0xDBB93507
	Offset: 0x1AA8
	Size: 0x1C5
	Parameters: 0
	Flags: Private
*/
function private function_c690c6b2()
{
	var_2395e945 = function_3f10449f();
	if(var_2395e945.size == 1)
	{
		if(self.var_dc4a16f6 == 0)
		{
			self.var_b939db43 = 3;
		}
		break;
	}
	var_6b49ec9d = 0;
	foreach(var_5dc5e20a in var_2395e945)
	{
		if(function_5b49d38c(var_5dc5e20a) && (!isdefined(var_5dc5e20a.var_564407fb) && var_5dc5e20a.var_564407fb || var_5dc5e20a.var_dc4a16f6 > 0))
		{
			var_6b49ec9d = 1;
			break;
		}
	}
	if(!var_6b49ec9d)
	{
		level.var_ee7cb602 = 1;
		foreach(var_5dc5e20a in var_2395e945)
		{
			var_5dc5e20a.var_b939db43 = 3;
		}
	}
}

/*
	Name: function_fdb7e3be
	Namespace: namespace_564407fb
	Checksum: 0x4E1B4267
	Offset: 0x1C78
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_fdb7e3be()
{
	self endon("hash_90831b9e");
	self endon("hash_c0d64b3");
	self endon("hash_643a7daf");
	self endon("hash_55838fcd");
	if(level.var_2395e945.size == 1)
	{
		return;
	}
	while(1)
	{
		self waittill("hash_b79afd4d", var_e11a3779);
		if(!self.var_255b9315)
		{
			self.var_b939db43 = self.var_b939db43 - 0.02 * var_e11a3779;
		}
	}
}

/*
	Name: function_53795dc2
	Namespace: namespace_564407fb
	Checksum: 0x17C3DA39
	Offset: 0x1D18
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_53795dc2(var_67520c6a)
{
	self endon("hash_90831b9e");
	self endon("hash_c0d64b3");
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self namespace_71e9cb84::function_e9c3870b("sndHealth", 2);
	self.var_320b6880 = var_67520c6a;
	self.var_b939db43 = var_67520c6a;
	if(var_67520c6a != 0 && !function_51061490())
	{
		function_c690c6b2();
	}
	if(isdefined(level.var_ee7cb602) && level.var_ee7cb602)
	{
		function_37cbcf1a("evt_death_down", (0, 0, 0));
	}
	self thread function_fdb7e3be();
	do
	{
		function_ee6922c8();
		level namespace_71e9cb84::function_331efedc("laststand_update" + self function_c7f3ce11(), self.var_b939db43 + 1);
	}
	while(!self.var_b939db43 > 0);
	self notify("hash_55838fcd");
	namespace_d8129fdd::function_945c54c5("player_bled_out", self);
	namespace_82b91a51::function_76f13293();
	self function_8b8edd3e();
}

/*
	Name: function_8c0630b5
	Namespace: namespace_564407fb
	Checksum: 0x25D88984
	Offset: 0x1EC0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_8c0630b5()
{
	if(!isdefined(self.var_e3f4954d.var_a0ad4f34))
	{
		self.var_e3f4954d.var_a0ad4f34 = self;
	}
}

/*
	Name: function_8b8edd3e
	Namespace: namespace_564407fb
	Checksum: 0xD0CD3520
	Offset: 0x1EF8
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_8b8edd3e()
{
	if(function_4bd0142f("enable_new_death_cam", 1))
	{
		var_6afb4351 = function_f3087faa("bleed_out_screen_fade_speed", 1.5);
		self function_8a20e55d("chr_health_laststand_bleedout");
		self namespace_ce7c3ed5::function_3f0b2996(var_6afb4351, 1, 0, "black", 0);
		wait(var_6afb4351 + 0.2);
	}
	self function_4a66f284();
	if(isdefined(self.var_273f42da))
	{
		self.var_273f42da function_dc8c8404();
	}
	self.var_273f42da = undefined;
	self namespace_71e9cb84::function_e9c3870b("sndHealth", 0);
	level namespace_71e9cb84::function_331efedc("laststand_update" + self function_c7f3ce11(), 1);
	namespace_93ed41ec::function_20ea24d9("player_bledout", GetTime(), self, undefined, 1);
	level notify("hash_8b8edd3e", self.var_d733de8e);
	self notify("hash_a31e5729");
	self namespace_c03736ba::function_6dc12009();
	self function_2fe6d6e1();
	self.var_255b9315 = 0;
	self namespace_82b91a51::function_c72856fc(1);
	self.var_4ad7aecc = 1;
	self function_8c0630b5();
	self function_584b97b7();
	self thread function_dc445542(15);
}

/*
	Name: function_dc445542
	Namespace: namespace_564407fb
	Checksum: 0x29E1B9EF
	Offset: 0x2128
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_dc445542(var_76a6ebb1)
{
	self endon("hash_643a7daf");
	var_2395e945 = function_3f10449f();
	if(var_2395e945.size == 1)
	{
		return;
	}
	self waittill("hash_7f738843");
	self endon("hash_ab1f9ea1");
	level endon("hash_4b5852e7");
	wait(var_76a6ebb1);
	if(self.var_e0beb6ee == "spectator")
	{
		self thread namespace_7956eece::function_8deb5b1b();
	}
}

/*
	Name: function_32b4342
	Namespace: namespace_564407fb
	Checksum: 0x5A265427
	Offset: 0x21D0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_32b4342()
{
	self.var_f6072c79 = function_ad13099a(self);
	self.var_f6072c79.var_b5536acc = "center";
	self.var_f6072c79.var_db55e535 = "middle";
	self.var_f6072c79.var_740218b1 = "center";
	self.var_f6072c79.var_f9134763 = "bottom";
	self.var_f6072c79.var_297f9d46 = -170;
	if(self function_33d0d4d7())
	{
		self.var_f6072c79.var_297f9d46 = -132;
	}
	self.var_f6072c79.var_79e0f792 = 1;
	self.var_f6072c79.var_83253ac2 = "default";
	self.var_f6072c79.var_2363da9c = 1.5;
	self.var_f6072c79.var_aabe9f43 = 1;
	self.var_f6072c79.var_d900369a = (1, 1, 1);
	self.var_f6072c79.var_5773c805 = 1;
	self thread function_5c3b9a2f();
}

/*
	Name: function_5c3b9a2f
	Namespace: namespace_564407fb
	Checksum: 0x9DAEF907
	Offset: 0x2338
	Size: 0x249
	Parameters: 0
	Flags: None
*/
function function_5c3b9a2f()
{
	self endon("hash_643a7daf");
	self endon("hash_d02f376");
	self endon("hash_90831b9e");
	self endon("hash_55838fcd");
	self endon("hash_4433b565");
	level endon("hash_c8ab51de");
	level endon("hash_21660df5");
	self thread function_9a3e66fc();
	self thread function_a5c40dbc();
	while(self function_d5ef124())
	{
		wait(1);
	}
	if(!isdefined(self.var_f6072c79))
	{
		return;
	}
	while(1)
	{
		wait(0.1);
		if(!isdefined(self.var_f6072c79))
		{
			continue;
		}
		self.var_f6072c79 function_f6181aca(&"COOP_BUTTON_TO_SUICIDE");
		if(!self function_10991141())
		{
			continue;
		}
		self.var_7602ee2c = self function_48c6a3a2();
		self function_860a040a(level.var_339f8cb2);
		self function_cb53a41e(level.var_339f8cb2);
		var_62240a71 = self function_8d71385c();
		var_8677f253 = function_51ede748(var_62240a71);
		self.var_564407fb = undefined;
		self function_1f3745c0(level.var_339f8cb2);
		if(var_8677f253)
		{
			self notify("hash_c0d64b3");
			namespace_82b91a51::function_76f13293();
			self function_8b8edd3e();
			return;
		}
		self function_cb53a41e(self.var_7602ee2c);
		self.var_7602ee2c = undefined;
	}
}

/*
	Name: function_51ede748
	Namespace: namespace_564407fb
	Checksum: 0xAE46B3E2
	Offset: 0x2590
	Size: 0x31F
	Parameters: 1
	Flags: None
*/
function function_51ede748(var_62240a71)
{
	level endon("hash_c8ab51de");
	level endon("hash_21660df5");
	var_6d12a464 = var_62240a71;
	var_6f6f10c = 0;
	var_5da69e51 = 0;
	self.var_f6072c79 function_f6181aca("");
	if(!isdefined(self.var_af0e0d25))
	{
		self.var_af0e0d25 = self namespace_724a4794::function_2057d0d7();
	}
	if(!isdefined(self.var_292c9541))
	{
		self.var_292c9541 = function_ad13099a(self);
	}
	self.var_af0e0d25 namespace_724a4794::function_7089bce5(0.01, 1 / var_6d12a464);
	self.var_292c9541.var_b5536acc = "center";
	self.var_292c9541.var_db55e535 = "middle";
	self.var_292c9541.var_740218b1 = "center";
	self.var_292c9541.var_f9134763 = "bottom";
	self.var_292c9541.var_297f9d46 = -173;
	if(self function_33d0d4d7())
	{
		self.var_292c9541.var_297f9d46 = -147;
	}
	self.var_292c9541.var_79e0f792 = 1;
	self.var_292c9541.var_83253ac2 = "default";
	self.var_292c9541.var_2363da9c = 1.8;
	self.var_292c9541.var_aabe9f43 = 1;
	self.var_292c9541.var_d900369a = (1, 1, 1);
	self.var_292c9541.var_5773c805 = 1;
	self.var_292c9541 function_f6181aca(&"COOP_SUICIDING");
	namespace_d8129fdd::function_945c54c5("last_stand_suicide", self);
	while(self function_10991141())
	{
		wait(0.05);
		var_6f6f10c = var_6f6f10c + 0.05;
		if(var_6f6f10c >= var_6d12a464)
		{
			var_5da69e51 = 1;
			break;
		}
	}
	if(isdefined(self.var_af0e0d25))
	{
		self.var_af0e0d25 namespace_724a4794::function_9c3abbf4();
	}
	if(isdefined(self.var_292c9541))
	{
		self.var_292c9541 function_89cd542d();
	}
	if(isdefined(self.var_f6072c79))
	{
		self.var_f6072c79 function_f6181aca(&"COOP_BUTTON_TO_SUICIDE");
	}
	return var_5da69e51;
}

/*
	Name: function_d9f29410
	Namespace: namespace_564407fb
	Checksum: 0x68BEEDA0
	Offset: 0x28B8
	Size: 0x69
	Parameters: 0
	Flags: None
*/
function function_d9f29410()
{
	if(!function_5b49d38c(self))
	{
		return 0;
	}
	if(!self function_38a9aff8())
	{
		return 0;
	}
	if(!isdefined(self.var_f6072c79))
	{
		return 0;
	}
	if(isdefined(level.var_4b93af95) && level.var_4b93af95)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_10991141
	Namespace: namespace_564407fb
	Checksum: 0x8BC5549B
	Offset: 0x2930
	Size: 0x39
	Parameters: 1
	Flags: None
*/
function function_10991141(var_b856588b)
{
	return self function_d5ef124() && function_d9f29410();
}

/*
	Name: function_efcdbee7
	Namespace: namespace_564407fb
	Checksum: 0x92960DA2
	Offset: 0x2978
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_efcdbee7()
{
	if(isdefined(level.var_35062dcd))
	{
		[[level.var_35062dcd]](self);
	}
	else
	{
		var_f8456b37 = function_4bd0142f("revive_trigger_radius");
		self.var_273f42da = function_9b7fda5e("trigger_radius", (0, 0, 0), 0, var_f8456b37, var_f8456b37);
		self.var_273f42da function_d5eb00e3("");
		self.var_273f42da function_e68ee88a("HINT_NOICON");
		self.var_273f42da function_b0b70abb(1);
		self.var_273f42da function_8f279593();
		self.var_273f42da.var_722885f3 = self.var_722885f3;
		self.var_273f42da function_37f7858a(self);
		self.var_273f42da.var_ae15c5db = 0;
		self.var_273f42da.var_6963acb2 = GetTime();
	}
	self thread function_fe6c9e16();
}

/*
	Name: function_fe6c9e16
	Namespace: namespace_564407fb
	Checksum: 0x56017297
	Offset: 0x2AE0
	Size: 0x303
	Parameters: 0
	Flags: None
*/
function function_fe6c9e16()
{
	self endon("hash_643a7daf");
	self endon("hash_d02f376");
	level endon("hash_c8ab51de");
	self endon("hash_128f8789");
	while(1)
	{
		wait(0.1);
		if(!isdefined(self.var_273f42da))
		{
			self notify("hash_d02f376");
		}
		self.var_273f42da function_d5eb00e3("");
		var_2395e945 = function_3f10449f();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
		{
			if(var_2395e945[var_c957f6b6] function_e3c7472f(self))
			{
				self.var_273f42da function_bd00ae3c(&"COOP_BUTTON_TO_REVIVE_PLAYER", self.var_3e94206a);
				break;
			}
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
		{
			var_7e312c64 = var_2395e945[var_c957f6b6];
			if(self == var_7e312c64 || !var_7e312c64 function_abea309a(self))
			{
				continue;
			}
			var_d60f4e1 = var_7e312c64 function_48c6a3a2();
			/#
				namespace_33b293fd::function_a7ee953(isdefined(var_d60f4e1));
			#/
			if(var_d60f4e1 == level.var_5f7fff60)
			{
				continue;
			}
			var_7e312c64 function_860a040a(level.var_5f7fff60);
			var_7e312c64 function_cb53a41e(level.var_5f7fff60);
			var_7e312c64 function_cdf98bcd(level.var_5f7fff60, 1);
			var_7e312c64 function_b67fa293();
			var_7e312c64 function_e6152ede();
			var_7e312c64 function_3c64a65b();
			var_7e312c64 function_518a4a08();
			var_632c062 = var_7e312c64 function_b61cb806(self, var_d60f4e1);
			var_7e312c64 function_b6822e5a(var_d60f4e1);
			if(var_632c062)
			{
				self thread function_632c062(var_7e312c64);
				self function_4a66f284();
				return;
			}
		}
	}
}

/*
	Name: function_b6822e5a
	Namespace: namespace_564407fb
	Checksum: 0xDE8F2A50
	Offset: 0x2DF0
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_b6822e5a(var_d60f4e1)
{
	self function_1f3745c0(level.var_5f7fff60);
	self function_34d04c40();
	self function_6c8f914f();
	self function_b1c908e();
	self function_4b9f6977();
	if(self function_38a9aff8())
	{
		return;
	}
	if(self function_2103ff4b(var_d60f4e1))
	{
		self function_cb53a41e(var_d60f4e1);
	}
	else
	{
		var_d646ce1c = self function_da26566c();
		if(isdefined(var_d646ce1c) && var_d646ce1c.size > 0)
		{
			self function_cb53a41e(var_d646ce1c[0]);
		}
	}
}

/*
	Name: function_e3c7472f
	Namespace: namespace_564407fb
	Checksum: 0x5451A421
	Offset: 0x2F30
	Size: 0x25D
	Parameters: 1
	Flags: None
*/
function function_e3c7472f(var_b856588b)
{
	if(!isdefined(var_b856588b.var_273f42da))
	{
		return 0;
	}
	if(!function_5b49d38c(self))
	{
		return 0;
	}
	if(self function_38a9aff8())
	{
		return 0;
	}
	if(self.var_3e94206a != var_b856588b.var_3e94206a)
	{
		return 0;
	}
	if(isdefined(level.var_e3c7472f) && ![[level.var_e3c7472f]](var_b856588b))
	{
		return 0;
	}
	if(isdefined(level.var_ae6ced2b) && ![[level.var_ae6ced2b]](var_b856588b))
	{
		return 0;
	}
	var_40234e3f = 0;
	var_5472cbe1 = 0;
	if(isdefined(level.var_3e734ec2))
	{
		var_40234e3f = [[level.var_3e734ec2]](self);
		if(var_40234e3f && isdefined(var_b856588b.var_273f42da.var_ae15c5db) && var_b856588b.var_273f42da.var_ae15c5db == 1)
		{
			var_5472cbe1 = 1;
		}
	}
	if(!var_5472cbe1)
	{
		if(!self function_32fa5072(var_b856588b.var_273f42da))
		{
			return 0;
		}
	}
	if(!var_40234e3f)
	{
		if(!self function_a449518a(var_b856588b, 0.8))
		{
			return 0;
		}
		if(!function_e7865c4b(self.var_722885f3 + VectorScale((0, 0, 1), 50), var_b856588b.var_722885f3 + VectorScale((0, 0, 1), 30), 0, undefined))
		{
			return 0;
		}
		if(!function_7178c13c(self.var_722885f3 + VectorScale((0, 0, 1), 50), var_b856588b.var_722885f3 + VectorScale((0, 0, 1), 30), 0, undefined))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_abea309a
	Namespace: namespace_564407fb
	Checksum: 0x59900967
	Offset: 0x3198
	Size: 0x39
	Parameters: 1
	Flags: None
*/
function function_abea309a(var_b856588b)
{
	return self function_d5ef124() && function_e3c7472f(var_b856588b);
}

/*
	Name: function_eae9bf9
	Namespace: namespace_564407fb
	Checksum: 0x5FE0804A
	Offset: 0x31E0
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function function_eae9bf9()
{
	return isdefined(self.var_eae9bf9) && self.var_eae9bf9;
}

/*
	Name: function_b61cb806
	Namespace: namespace_564407fb
	Checksum: 0x89711EBD
	Offset: 0x3200
	Size: 0x637
	Parameters: 2
	Flags: None
*/
function function_b61cb806(var_dc213294, var_3012e872)
{
	/#
		namespace_33b293fd::function_a7ee953(self function_abea309a(var_dc213294));
	#/
	var_a7b273d = function_f3087faa("g_reviveTime", 3);
	if(self function_88542fcf("specialty_quickrevive"))
	{
		var_a7b273d = var_a7b273d / 2;
	}
	var_6f6f10c = 0;
	var_9253de22 = 0;
	var_dc213294.var_273f42da.var_ae15c5db = 1;
	var_dc213294.var_313d90e0 function_f6181aca(&"COOP_PLAYER_IS_REVIVING_YOU", self);
	var_dc213294 function_a1952490(3);
	var_dc213294.var_273f42da function_d5eb00e3("");
	if(function_65f192a6(var_dc213294))
	{
		var_dc213294 function_78bae150(self);
	}
	if(0 && !isdefined(self.var_30d551a2))
	{
		self.var_30d551a2 = self namespace_724a4794::function_2057d0d7();
	}
	if(!isdefined(self.var_fca62492))
	{
		self.var_fca62492 = function_ad13099a(self);
	}
	self namespace_175490fb::function_f8669cbf(2);
	self thread function_9e43f7f9(var_dc213294, var_3012e872);
	if(!isdefined(self.var_eae9bf9))
	{
		self.var_eae9bf9 = 0;
	}
	self.var_eae9bf9++;
	self thread function_eef372cb(var_dc213294);
	if(isdefined(self.var_30d551a2))
	{
		self.var_30d551a2 namespace_724a4794::function_7089bce5(0.01, 1 / var_a7b273d);
	}
	self.var_fca62492.var_b5536acc = "center";
	self.var_fca62492.var_db55e535 = "middle";
	self.var_fca62492.var_740218b1 = "center";
	self.var_fca62492.var_f9134763 = "bottom";
	self.var_fca62492.var_297f9d46 = -113;
	if(self function_33d0d4d7())
	{
		self.var_fca62492.var_297f9d46 = -347;
	}
	self.var_fca62492.var_79e0f792 = 1;
	self.var_fca62492.var_83253ac2 = "default";
	self.var_fca62492.var_2363da9c = 1.8;
	self.var_fca62492.var_aabe9f43 = 1;
	self.var_fca62492.var_d900369a = (1, 1, 1);
	self.var_fca62492.var_5773c805 = 1;
	self.var_fca62492 function_f6181aca(&"COOP_REVIVING");
	self thread function_55607ddf(var_dc213294);
	self function_8a20e55d("chr_revive_start");
	while(self function_abea309a(var_dc213294))
	{
		wait(0.05);
		var_6f6f10c = var_6f6f10c + 0.05;
		if(self function_38a9aff8())
		{
			break;
		}
		if(isdefined(var_dc213294.var_273f42da.var_d397bc5c) && var_dc213294.var_273f42da.var_d397bc5c == 1)
		{
			break;
		}
		if(var_6f6f10c >= var_a7b273d)
		{
			var_9253de22 = 1;
			if(!isdefined(self.var_a433a6cd) || self.var_a433a6cd <= 10)
			{
				namespace_a1cb6b52::function_ea11cfd6("player_did_revived", self);
			}
			break;
		}
	}
	self function_8a20e55d("chr_revive_end");
	if(isdefined(self.var_30d551a2))
	{
		self.var_30d551a2 namespace_724a4794::function_9c3abbf4();
	}
	if(isdefined(self.var_fca62492))
	{
		self.var_fca62492 function_89cd542d();
	}
	if(isdefined(var_dc213294.var_273f42da.var_d397bc5c) && var_dc213294.var_273f42da.var_d397bc5c == 1)
	{
	}
	else if(!var_9253de22)
	{
		if(function_65f192a6(var_dc213294))
		{
			var_dc213294 function_5a6d79ca(self);
		}
	}
	var_dc213294.var_273f42da function_d5eb00e3(&"COOP_BUTTON_TO_REVIVE_PLAYER");
	var_dc213294.var_273f42da.var_ae15c5db = 0;
	self notify("hash_ed3423ee");
	self.var_eae9bf9--;
	if(!var_9253de22)
	{
		var_dc213294 thread function_8c300fa8(self);
	}
	return var_9253de22;
}

/*
	Name: function_8c300fa8
	Namespace: namespace_564407fb
	Checksum: 0x7FA89FF8
	Offset: 0x3840
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_8c300fa8(var_5dc5e20a)
{
	self endon("hash_90831b9e");
	self endon("hash_c0d64b3");
	self endon("hash_643a7daf");
	var_5dc5e20a endon("hash_643a7daf");
	var_5dc5e20a notify("hash_40009ece");
}

/*
	Name: function_f6242780
	Namespace: namespace_564407fb
	Checksum: 0xCCCB16AA
	Offset: 0x3898
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_f6242780()
{
	self endon("hash_90831b9e");
	self waittill("hash_d397bc5c", var_7e312c64, var_358f18e0);
	function_d397bc5c(var_7e312c64, var_358f18e0);
}

/*
	Name: function_d397bc5c
	Namespace: namespace_564407fb
	Checksum: 0xDF95879E
	Offset: 0x38F0
	Size: 0x351
	Parameters: 2
	Flags: None
*/
function function_d397bc5c(var_7e312c64, var_358f18e0)
{
	if(isdefined(self.var_273f42da))
	{
		self.var_273f42da.var_d397bc5c = 1;
		if(self.var_273f42da.var_ae15c5db == 1)
		{
			while(1)
			{
				if(self.var_273f42da.var_ae15c5db == 0)
				{
					break;
				}
				namespace_82b91a51::function_76f13293();
			}
		}
		self.var_273f42da.var_74a5b32d = 0;
	}
	self function_9ad3560d();
	self namespace_71e9cb84::function_e9c3870b("sndHealth", 0);
	self notify("hash_d02f376");
	if(isdefined(self.var_273f42da))
	{
		self.var_273f42da function_dc8c8404();
		self.var_273f42da = undefined;
	}
	self function_4a66f284();
	if(!isdefined(var_358f18e0) || var_358f18e0 == 0)
	{
		self function_b308f533();
	}
	self function_ed04153c(1);
	self.var_255b9315 = 0;
	self function_4890e520();
	self.var_564407fb = undefined;
	self namespace_82b91a51::function_c72856fc(1);
	self namespace_ce7c3ed5::function_23157de();
	if(!(isdefined(level.var_3245a8d2) && level.var_3245a8d2))
	{
		if(isdefined(var_7e312c64))
		{
			if(function_65f192a6(var_7e312c64) && isdefined(function_9065d6ea()))
			{
				var_7e312c64 function_aa67c13b("REVIVES", 1);
				var_8642deaf = var_7e312c64 function_84368297("PlayerStatsList", "REVIVES", "statValue");
				var_7e312c64 function_b26abbde("REVIVES", var_8642deaf);
				var_7e312c64.var_a433a6cd = var_8642deaf - var_7e312c64 function_84368297("PlayerStatsByMap", function_9065d6ea(), "currentStats", "REVIVES");
				/#
					namespace_33b293fd::function_a7ee953(var_7e312c64.var_a433a6cd > 0);
				#/
				var_7e312c64.var_44fb8955["revives"] = var_7e312c64.var_a433a6cd;
			}
		}
	}
	self notify("hash_90831b9e", var_7e312c64);
}

/*
	Name: function_ffe1ffc9
	Namespace: namespace_564407fb
	Checksum: 0x7C831957
	Offset: 0x3C50
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_ffe1ffc9(var_7e312c64)
{
	if(!self function_38a9aff8())
	{
		return;
	}
	self function_d397bc5c(var_7e312c64);
}

/*
	Name: function_632c062
	Namespace: namespace_564407fb
	Checksum: 0x8B1AB81E
	Offset: 0x3CA0
	Size: 0x363
	Parameters: 2
	Flags: None
*/
function function_632c062(var_7e312c64, var_905e36c9)
{
	if(!isdefined(var_905e36c9))
	{
		var_905e36c9 = 1;
	}
	if(!function_65f192a6(self))
	{
		self notify("hash_90831b9e", var_7e312c64);
		return;
	}
	if(isdefined(var_905e36c9) && var_905e36c9)
	{
		namespace_93ed41ec::function_20ea24d9("player_revived", GetTime(), var_7e312c64, self);
	}
	if(function_65f192a6(self))
	{
		self function_ed04153c(1);
	}
	self.var_564407fb = undefined;
	self notify("hash_90831b9e", var_7e312c64);
	namespace_d8129fdd::function_945c54c5("player_revived", self);
	self function_9ad3560d();
	if(function_65f192a6(var_7e312c64) && isdefined(function_9065d6ea()))
	{
		var_7e312c64 function_aa67c13b("REVIVES", 1);
		var_8642deaf = var_7e312c64 function_84368297("PlayerStatsList", "REVIVES", "statValue");
		var_7e312c64 function_b26abbde("REVIVES", var_8642deaf);
		var_7e312c64.var_a433a6cd = var_8642deaf - var_7e312c64 function_84368297("PlayerStatsByMap", function_9065d6ea(), "currentStats", "REVIVES");
		/#
			namespace_33b293fd::function_a7ee953(var_7e312c64.var_a433a6cd > 0);
		#/
		var_7e312c64.var_44fb8955["revives"] = var_7e312c64.var_a433a6cd;
	}
	var_7e312c64.var_8cc9518d = self.var_722885f3;
	if(isdefined(var_905e36c9) && var_905e36c9)
	{
		var_7e312c64 thread function_e9f65331();
	}
	self namespace_71e9cb84::function_e9c3870b("sndHealth", 0);
	self.var_273f42da function_dc8c8404();
	self.var_273f42da = undefined;
	self function_4a66f284();
	self function_b308f533();
	self namespace_ce7c3ed5::function_23157de();
	self.var_255b9315 = 0;
	self function_4890e520();
	self namespace_82b91a51::function_c72856fc(1);
}

/*
	Name: function_383f6c6
	Namespace: namespace_564407fb
	Checksum: 0xB644743C
	Offset: 0x4010
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_383f6c6(var_7e312c64)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self));
	#/
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self));
	#/
	/#
		namespace_33b293fd::function_a7ee953(self function_38a9aff8());
	#/
	self thread function_632c062(var_7e312c64);
}

/*
	Name: function_693b08c9
	Namespace: namespace_564407fb
	Checksum: 0x3C63FE80
	Offset: 0x40A8
	Size: 0x2AB
	Parameters: 0
	Flags: None
*/
function function_693b08c9()
{
	level endon("hash_c8ab51de");
	while(1)
	{
		wait(0.1);
		if(!function_979c8c7a())
		{
			continue;
		}
		var_9253de22 = 0;
		foreach(var_3e94206a in level.var_e7a38025)
		{
			var_c00db8ae = undefined;
			foreach(var_5dc5e20a in level.var_bbd67d26[var_3e94206a])
			{
				if(!isdefined(var_5dc5e20a.var_273f42da) || !isdefined(var_5dc5e20a.var_273f42da.var_6963acb2))
				{
					continue;
				}
				if(!isdefined(var_c00db8ae) || var_c00db8ae.var_273f42da.var_6963acb2 > var_5dc5e20a.var_273f42da.var_6963acb2)
				{
					var_c00db8ae = var_5dc5e20a;
				}
			}
			if(isdefined(var_c00db8ae))
			{
				foreach(var_5dc5e20a in level.var_bbd67d26[var_3e94206a])
				{
					if(var_5dc5e20a function_38a9aff8())
					{
						continue;
					}
					var_5dc5e20a thread function_8a28b80b(var_c00db8ae, 3);
				}
				var_c00db8ae.var_273f42da.var_6963acb2 = undefined;
				var_9253de22 = 1;
			}
		}
		if(var_9253de22)
		{
			wait(3.5);
		}
	}
}

/*
	Name: function_8a28b80b
	Namespace: namespace_564407fb
	Checksum: 0xD3AE4C7E
	Offset: 0x4360
	Size: 0x8F
	Parameters: 2
	Flags: None
*/
function function_8a28b80b(var_c00db8ae, var_60db70fa)
{
	function_89c586ec();
	self.var_313d90e0.var_40dce60d = 1;
	self.var_313d90e0 function_f6181aca(&"COOP_PLAYER_NEEDS_TO_BE_REVIVED", var_c00db8ae);
	self.var_313d90e0 function_ba7f003e(var_60db70fa);
	self.var_313d90e0.var_aabe9f43 = 0;
}

/*
	Name: function_38c5da09
	Namespace: namespace_564407fb
	Checksum: 0x8FD0A96
	Offset: 0x43F8
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_38c5da09()
{
	self endon("hash_90831b9e");
	self endon("hash_643a7daf");
	/#
		function_895b00("Dev Block strings are not supported");
	#/
	self function_cd85ffaf(0);
	self namespace_71e9cb84::function_e9c3870b("sndHealth", 2);
	self.var_5ad7ff7e.var_8b479de8 = 0.5;
	self thread function_5006c91f();
	self thread function_5d050fca();
	while(self.var_5ad7ff7e.var_8b479de8 < 1)
	{
		self.var_5ad7ff7e.var_8b479de8 = self.var_5ad7ff7e.var_8b479de8 + 0.0025;
		wait(0.05);
	}
	self function_d397bc5c(self);
	namespace_d8129fdd::function_945c54c5("last_stand_getup", self);
	self namespace_71e9cb84::function_e9c3870b("sndHealth", 0);
}

/*
	Name: function_e9f65331
	Namespace: namespace_564407fb
	Checksum: 0x5FFC96A5
	Offset: 0x4550
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_e9f65331()
{
	self namespace_82b91a51::function_6729b6ba("sacrifice_denied", 1);
	self endon("hash_a1fbf52a");
	self waittill("hash_5cc39b7a");
}

/*
	Name: function_55607ddf
	Namespace: namespace_564407fb
	Checksum: 0xF15870C9
	Offset: 0x4598
	Size: 0x65
	Parameters: 1
	Flags: None
*/
function function_55607ddf(var_dc213294)
{
	self endon("hash_643a7daf");
	var_dc213294 endon("hash_643a7daf");
	var_dc213294 endon("hash_c0d64b3");
	self notify("hash_b646af71");
	self endon("hash_b646af71");
	var_dc213294 endon("hash_90831b9e");
	var_dc213294 waittill("hash_55838fcd");
}

/*
	Name: function_f2167381
	Namespace: namespace_564407fb
	Checksum: 0x98B22813
	Offset: 0x4608
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_f2167381()
{
	var_3503ebe1 = 1000;
	if(level.var_f21dc6b9 > 0)
	{
		var_3503ebe1 = function_b6b79a0(1000 / function_49c4d072(level.var_f21dc6b9 / 5));
	}
	self function_aa67c13b("weighted_downs", var_3503ebe1);
}

/*
	Name: function_863079e7
	Namespace: namespace_564407fb
	Checksum: 0xDD41C149
	Offset: 0x46A0
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_863079e7(var_62240a71, var_343833b4)
{
	level endon(var_343833b4);
	self namespace_18001e6d::function_ec5615ca(var_62240a71);
}

/*
	Name: function_a29ab05c
	Namespace: namespace_564407fb
	Checksum: 0x1A2B9B7D
	Offset: 0x46E0
	Size: 0x2BB
	Parameters: 1
	Flags: None
*/
function function_a29ab05c(var_a5aee4b9)
{
	if(!isdefined(var_a5aee4b9))
	{
		var_a5aee4b9 = 0;
	}
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	level namespace_ad23e503::function_74d6b22f("wait_and_revive");
	if(isdefined(self.var_686f6b12) && self.var_686f6b12 == 1)
	{
		return;
	}
	self.var_686f6b12 = 1;
	var_2840ac64 = 10;
	var_b939db43 = function_f3087faa("player_lastStandBleedoutTime");
	if(var_b939db43 <= var_2840ac64)
	{
		var_2840ac64 = var_b939db43 * 0.5;
	}
	if(isdefined(var_a5aee4b9) && var_a5aee4b9)
	{
		if(level.var_2395e945.size == 1)
		{
			self.var_313d90e0 function_f6181aca(&"COOP_REVIVE_EMERGENCY_RESERVE_ONCE");
		}
		else
		{
			self.var_313d90e0 function_f6181aca(&"COOP_REVIVE_EMERGENCY_RESERVE");
		}
	}
	self function_78bae150(self);
	self function_a1952490(var_2840ac64);
	self thread function_863079e7(var_2840ac64, "instant_revive");
	level namespace_ad23e503::function_d266a8b4(var_2840ac64, "instant_revive");
	self function_5a6d79ca(self);
	self.var_78f63664 = 1;
	self function_f2e7970f("hudItems.regenDelayProgress", 1);
	if(level namespace_ad23e503::function_7922262b("instant_revive"))
	{
		self function_a1952490(1);
	}
	level namespace_ad23e503::function_9d134160("wait_and_revive");
	self function_d397bc5c(self);
	self.var_dc4a16f6--;
	/#
		if(isdefined(self.var_6c733586) && self.var_6c733586)
		{
			self.var_dc4a16f6 = level.var_e782fb64;
		}
	#/
	self.var_686f6b12 = 0;
}

/*
	Name: function_4f798a75
	Namespace: namespace_564407fb
	Checksum: 0xB07D7281
	Offset: 0x49A8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_4f798a75()
{
	self endon("hash_128f8789");
	self endon("hash_90831b9e");
	var_c951fac1 = 1;
	while(var_c951fac1)
	{
		self waittill("hash_ffe1ffc9", var_7e312c64);
		if(var_7e312c64.var_3e94206a == self.var_3e94206a)
		{
			var_c951fac1 = 0;
		}
	}
	self function_ffe1ffc9(var_7e312c64);
}

/*
	Name: function_4e4dab57
	Namespace: namespace_564407fb
	Checksum: 0xA444627F
	Offset: 0x4A40
	Size: 0x12B
	Parameters: 9
	Flags: None
*/
function function_4e4dab57(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_b2e5f7d2)
{
	var_54d1a8f4 = 0;
	self function_ed04153c(0);
	var_ae5ee9c9 = self function_48c6a3a2();
	var_34a10573 = var_ae5ee9c9;
	if(isdefined(self.var_dc4a16f6) && self.var_dc4a16f6 > 0)
	{
		self thread function_a29ab05c(self function_76f34311("cybercom_emergencyreserve") != 0);
	}
	self thread function_4f798a75();
	self function_518a4a08();
}

