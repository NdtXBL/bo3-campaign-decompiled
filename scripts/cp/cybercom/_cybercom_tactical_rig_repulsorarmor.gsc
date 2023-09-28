#using scripts\codescripts\struct;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_a7b77773;

/*
	Name: init
	Namespace: namespace_a7b77773
	Checksum: 0x99EC1590
	Offset: 0x3C8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_a7b77773
	Checksum: 0x1053978
	Offset: 0x3D8
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function main()
{
	callback::on_connect(&on_player_connect);
	callback::on_spawned(&on_player_spawned);
	level._effect["repulsorarmor_fx"] = "player/fx_plyr_ability_repulsor_armor";
	level._effect["repulsorarmorUpgraded_fx"] = "player/fx_plyr_ability_repulsor_armor";
	level._effect["repulsorarmor_contact"] = "electric/fx_elec_sparks_burst_lg_os";
	namespace_726a1ef0::function_8cb15f87("cybercom_repulsorarmor", 1);
	namespace_726a1ef0::function_8b4ef058("cybercom_repulsorarmor", &function_3988f084, &function_59ae49d2);
}

/*
	Name: on_player_connect
	Namespace: namespace_a7b77773
	Checksum: 0x99EC1590
	Offset: 0x4D0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
}

/*
	Name: on_player_spawned
	Namespace: namespace_a7b77773
	Checksum: 0x99EC1590
	Offset: 0x4E0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
}

/*
	Name: function_3988f084
	Namespace: namespace_a7b77773
	Checksum: 0x6BB68ADD
	Offset: 0x4F0
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_3988f084(type)
{
	if(!isdefined(self.cybercom.var_c281e3c))
	{
		self.cybercom.var_c281e3c = [];
		self.cybercom.var_c281e3c[0] = spawnstruct();
		self.cybercom.var_c281e3c[1] = spawnstruct();
		self.cybercom.var_c281e3c[2] = spawnstruct();
		self.cybercom.var_c281e3c[3] = spawnstruct();
		self.cybercom.var_c281e3c[0].time = 0;
		self.cybercom.var_c281e3c[1].time = 0;
		self.cybercom.var_c281e3c[2].time = 0;
		self.cybercom.var_c281e3c[3].time = 0;
	}
	self thread function_170e07a2();
	self thread function_13a66a32(type);
}

/*
	Name: function_59ae49d2
	Namespace: namespace_a7b77773
	Checksum: 0xAEB2CF85
	Offset: 0x688
	Size: 0x59
	Parameters: 1
	Flags: None
*/
function function_59ae49d2(type)
{
	if(isdefined(self.missile_repulsor))
	{
		missile_deleteattractor(self.missile_repulsor);
		self.missile_repulsor = undefined;
	}
	self notify("hash_59ae49d2");
	self.cybercom.var_c281e3c = undefined;
}

/*
	Name: function_13a66a32
	Namespace: namespace_a7b77773
	Checksum: 0xD565A0E
	Offset: 0x6F0
	Size: 0x207
	Parameters: 1
	Flags: Private
*/
function private function_13a66a32(weapon)
{
	self notify("hash_9fd8f9c4");
	self endon("hash_9fd8f9c4");
	self endon("hash_59ae49d2");
	self endon("death");
	self endon("disconnect");
	var_87b94db5 = self function_76f34311(weapon) == 2;
	if(var_87b94db5)
	{
	}
	else
	{
	}
	FX = level._effect["repulsorarmor_fx"];
	if(!isdefined(self.missile_repulsor))
	{
		self.missile_repulsor = missile_createrepulsorent(self, 4000, GetDvarInt("scr_repulsorarmor_dist", 200), var_87b94db5);
	}
	Cooldown = 0.5;
	var_6d621232 = GetTime();
	while(1)
	{
		self waittill("hash_d9877503", missile);
		if(GetTime() > var_6d621232 + Cooldown * 1000)
		{
			if(!isdefined(self.usingvehicle) || (isdefined(self.usingvehicle) && self.usingvehicle != 1))
			{
				PlayFXOnTag(FX, self, "tag_origin");
				self playsound("gdt_cybercore_rig_repulse_jawawawa");
				self thread function_934364a2(missile, self.origin + VectorScale((0, 0, 1), 72));
				var_6d621232 = GetTime();
			}
		}
	}
}

/*
	Name: function_170e07a2
	Namespace: namespace_a7b77773
	Checksum: 0x8BFE5DA9
	Offset: 0x900
	Size: 0x27F
	Parameters: 0
	Flags: Private
*/
function private function_170e07a2()
{
	self endon("hash_59ae49d2");
	self endon("death");
	self endon("disconnect");
	while(1)
	{
		curtime = GetTime();
		var_f9459f98 = undefined;
		var_2f0e78d0 = 0;
		for(zone = 0; zone < 4; zone++)
		{
			if(self.cybercom.var_c281e3c[zone].time > curtime)
			{
				threat = self.cybercom.var_c281e3c[zone].threat;
				if(isdefined(threat))
				{
					self.cybercom.var_c281e3c[zone].yaw = self cybercom::GetYawToSpot(threat.origin);
				}
				if(self.cybercom.var_c281e3c[zone].time > var_2f0e78d0)
				{
					var_2f0e78d0 = self.cybercom.var_c281e3c[zone].time;
					var_f9459f98 = zone;
				}
				continue;
			}
			if(self.cybercom.var_c281e3c[zone].time != 0)
			{
				self.cybercom.var_c281e3c[zone].time = 0;
				self.cybercom.var_c281e3c[zone].threat = undefined;
				self.cybercom.var_c281e3c[zone].yaw = undefined;
			}
		}
		if(isdefined(var_f9459f98))
		{
			self clientfield::set_player_uimodel("playerAbilities.repulsorIndicatorIntensity", 1);
			self clientfield::set_player_uimodel("playerAbilities.repulsorIndicatorDirection", var_f9459f98);
		}
		else
		{
			self clientfield::set_player_uimodel("playerAbilities.repulsorIndicatorIntensity", 0);
		}
		wait(0.05);
	}
}

/*
	Name: function_1542f1f0
	Namespace: namespace_a7b77773
	Checksum: 0x6F9CF3BE
	Offset: 0xB88
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_1542f1f0(threat)
{
	if(isdefined(threat.owner))
	{
	}
	else
	{
	}
	threat = threat;
	yaw = self cybercom::GetYawToSpot(threat.origin);
	if(yaw > -45 && yaw <= 45)
	{
		zone = 0;
	}
	else if(yaw > 45 && yaw <= 135)
	{
		zone = 3;
	}
	else if(yaw > 135 && yaw <= 180 || (yaw >= -180 && yaw < -135))
	{
		zone = 2;
	}
	else
	{
		zone = 1;
	}
	self.cybercom.var_c281e3c[zone].time = GetTime() + GetDvarInt("scr_repulsorarmor_indicator_durationMSEC", 1500);
	self.cybercom.var_c281e3c[zone].threat = threat;
	self.cybercom.var_c281e3c[zone].yaw = yaw;
}

/*
	Name: function_934364a2
	Namespace: namespace_a7b77773
	Checksum: 0x7C2E6EFF
	Offset: 0xD30
	Size: 0x83
	Parameters: 2
	Flags: Private
*/
function private function_934364a2(grenade, var_d355aea1)
{
	if(isdefined(grenade))
	{
		self thread function_1542f1f0(grenade);
		grenade playsound("gdt_cybercore_rig_repulse_jawawawa_missile");
		playFX(level._effect["repulsorarmor_contact"], grenade.origin);
	}
}

