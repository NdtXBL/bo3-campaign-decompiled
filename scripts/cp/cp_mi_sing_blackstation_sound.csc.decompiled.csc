#using scripts\codescripts\struct;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;

#namespace namespace_7a033503;

/*
	Name: function_d290ebfa
	Namespace: namespace_7a033503
	Checksum: 0x6DFC0B30
	Offset: 0x2C8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level thread function_87c8026c();
	level thread function_ca589ae4();
	namespace_71e9cb84::function_50f16166("toplayer", "slowmo_duck_active", 1, 2, "int", &function_41d671f5, 0, 0);
}

/*
	Name: function_879c3b17
	Namespace: namespace_7a033503
	Checksum: 0xD1F983D0
	Offset: 0x350
	Size: 0x279
	Parameters: 7
	Flags: None
*/
function function_879c3b17(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		if(!isdefined(self.var_e9bbdd0a))
		{
			self function_4a1ecb6c();
			self.var_e9bbdd0a = self function_c2931a36("amb_scripted_wind_normal", 2);
			function_a69510c2(self.var_e9bbdd0a, 1);
			function_9d2e5c(self.var_e9bbdd0a, 0.5);
		}
		if(!isdefined(self.var_c3b962a1))
		{
			self.var_c3b962a1 = self function_c2931a36("amb_scripted_wind_heavy", 2);
			function_a69510c2(self.var_c3b962a1, 0);
			function_9d2e5c(self.var_c3b962a1, 0.5);
		}
		self thread function_d84ed3d1();
		switch(var_9193c732)
		{
			case 1:
			{
				function_a69510c2(self.var_e9bbdd0a, 1);
				function_a69510c2(self.var_c3b962a1, 0);
				namespace_4fe3eef1::function_36bbd2b2("default");
				break;
			}
			case 2:
			{
				function_a69510c2(self.var_e9bbdd0a, 0.5);
				function_a69510c2(self.var_c3b962a1, 1);
				namespace_4fe3eef1::function_36bbd2b2("cp_blackstation_scripted_wind");
				break;
			}
		}
	}
	else
	{
		self notify("hash_450e1742");
		self function_4a1ecb6c();
		if(isdefined(self.var_e9bbdd0a))
		{
			self.var_e9bbdd0a = undefined;
		}
		if(isdefined(self.var_c3b962a1))
		{
			self.var_c3b962a1 = undefined;
		}
	}
}

/*
	Name: function_d84ed3d1
	Namespace: namespace_7a033503
	Checksum: 0x59984D
	Offset: 0x5D8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_d84ed3d1()
{
	self notify("hash_d84ed3d1");
	self endon("hash_d84ed3d1");
	self endon("hash_450e1742");
	self waittill("hash_d5da096");
	if(isdefined(self))
	{
		self function_4a1ecb6c();
	}
}

/*
	Name: function_87c8026c
	Namespace: namespace_7a033503
	Checksum: 0x16549F41
	Offset: 0x638
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_87c8026c()
{
	function_9c128ee("evt_barge_wave_looper", (1193, -8283, 193));
}

/*
	Name: function_ca589ae4
	Namespace: namespace_7a033503
	Checksum: 0x1B8A0CE7
	Offset: 0x670
	Size: 0x503
	Parameters: 0
	Flags: None
*/
function function_ca589ae4()
{
	namespace_4fe3eef1::function_11908f52("amb_glass_shake_loop", (-8446, 10255, 419));
	namespace_4fe3eef1::function_11908f52("amb_glass_shake_loop", (-9941, 11040, 452));
	namespace_4fe3eef1::function_11908f52("amb_rain_on_windows", (-8347, 10197, 369));
	namespace_4fe3eef1::function_11908f52("amb_wind_blend", (-8422, 9652, 382));
	namespace_4fe3eef1::function_11908f52("amb_wind_blend", (-8161, 9575, 435));
	namespace_4fe3eef1::function_11908f52("amb_subway_light", (-5813, 5559, 285));
	namespace_4fe3eef1::function_11908f52("amb_subway_light", (-5509, 4875, 123));
	namespace_4fe3eef1::function_11908f52("amb_subway_light", (-6675, 4978, 158));
	namespace_4fe3eef1::function_11908f52("amb_subway_light", (3167, -3813, 126));
	namespace_4fe3eef1::function_11908f52("amb_subway_light", (3497, -3427, 124));
	namespace_4fe3eef1::function_11908f52("amb_river_debris", (-9133, 9903, 192));
	namespace_4fe3eef1::function_11908f52("amb_river_debris", (-6101, 9777, 61));
	namespace_4fe3eef1::function_11908f52("amb_wind_whistle_loud_right", (-8291, 9671, 378));
	namespace_4fe3eef1::function_11908f52("amb_subway_light", (-7624, 9896, 406));
	namespace_4fe3eef1::function_11908f52("amb_rain_on_concrete", (-6483, 6114, 550));
	namespace_4fe3eef1::function_11908f52("amb_rain_on_concrete", (-6478, 6181, 551));
	namespace_4fe3eef1::function_11908f52("amb_rain_on_concrete", (-6477, 6230, 548));
	namespace_4fe3eef1::function_11908f52("amb_wind_whistle_left", (4552, 820, 695));
	namespace_4fe3eef1::function_11908f52("amb_metal_debris_shake", (5238, 710, 699));
	namespace_4fe3eef1::function_11908f52("amb_rain_on_concrete", (4698, 917, 656));
	namespace_4fe3eef1::function_11908f52("amb_rain_on_concrete", (4767, 823, 632));
	namespace_4fe3eef1::function_11908f52("amb_rain_on_concrete", (4871, 802, 636));
	namespace_4fe3eef1::function_11908f52("amb_rain_on_concrete", (4659, 860, 663));
	namespace_4fe3eef1::function_11908f52("amb_rain_on_metal_debris", (5075, 733, 650));
	namespace_4fe3eef1::function_11908f52("amb_buoy", (436, -4077, 119));
	namespace_4fe3eef1::function_11908f52("amb_sea_distant", (166, -3692, 177));
	namespace_4fe3eef1::function_11908f52("amb_subway_light", (-1409, 10106, 395));
	namespace_4fe3eef1::function_11908f52("amb_subway_light", (-1306, 9830, 19));
	namespace_4fe3eef1::function_11908f52("amb_subway_light", (-1547, 10060, 19));
	namespace_4fe3eef1::function_11908f52("amb_subway_light", (-288, 9298, 21));
	namespace_4fe3eef1::function_11908f52("amb_subway_light", (-1058, 9718, 171));
	namespace_4fe3eef1::function_11908f52("amb_subway_light", (-571, 9460, 30));
}

/*
	Name: function_fb96c813
	Namespace: namespace_7a033503
	Checksum: 0xD954F333
	Offset: 0xB80
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_fb96c813(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		namespace_4fe3eef1::function_11908f52("amb_station_walla", (-4172, 4988, 40));
	}
	else
	{
		namespace_4fe3eef1::function_b2f15380("amb_station_walla", (-4172, 4988, 40));
	}
}

/*
	Name: function_c6d82f9d
	Namespace: namespace_7a033503
	Checksum: 0x646F98CE
	Offset: 0xC20
	Size: 0x12B
	Parameters: 7
	Flags: None
*/
function function_c6d82f9d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	namespace_4fe3eef1::function_11908f52("amb_computer_error", (84, 9455, 140));
	namespace_4fe3eef1::function_11908f52("amb_computer_error", (-950, 1088, 220));
	namespace_4fe3eef1::function_11908f52("amb_computer_error", (-1351, 9976, 220));
	namespace_4fe3eef1::function_11908f52("amb_computer_future", (-672, 9640, 216));
	namespace_4fe3eef1::function_11908f52("amb_computer_future", (-1136, 9630, 200));
	namespace_4fe3eef1::function_11908f52("amb_computer_future", (-783, 9675, 220));
}

/*
	Name: function_598a3b92
	Namespace: namespace_7a033503
	Checksum: 0x608C6E71
	Offset: 0xD58
	Size: 0x47B
	Parameters: 7
	Flags: None
*/
function function_598a3b92(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		namespace_4fe3eef1::function_b2f15380("amb_glass_shake_loop", (-8446, 10255, 419));
		namespace_4fe3eef1::function_b2f15380("amb_glass_shake_loop", (-9941, 11040, 452));
		namespace_4fe3eef1::function_b2f15380("amb_rain_on_windows", (-8347, 10197, 369));
		namespace_4fe3eef1::function_b2f15380("amb_wind_blend", (-8422, 9652, 382));
		namespace_4fe3eef1::function_b2f15380("amb_wind_blend", (-8161, 9575, 435));
		namespace_4fe3eef1::function_b2f15380("amb_subway_light", (-5813, 5559, 285));
		namespace_4fe3eef1::function_b2f15380("amb_subway_light", (-5509, 4875, 123));
		namespace_4fe3eef1::function_b2f15380("amb_subway_light", (-6675, 4978, 158));
		namespace_4fe3eef1::function_b2f15380("amb_subway_light", (3167, -3813, 126));
		namespace_4fe3eef1::function_b2f15380("amb_subway_light", (3497, -3427, 124));
		namespace_4fe3eef1::function_b2f15380("amb_river_debris", (-9133, 9903, 192));
		namespace_4fe3eef1::function_b2f15380("amb_river_debris", (-6101, 9777, 61));
		namespace_4fe3eef1::function_b2f15380("amb_wind_whistle_loud_right", (-8291, 9671, 378));
		namespace_4fe3eef1::function_b2f15380("amb_subway_light", (-7624, 9896, 406));
		namespace_4fe3eef1::function_b2f15380("amb_rain_on_concrete", (-6483, 6114, 550));
		namespace_4fe3eef1::function_b2f15380("amb_rain_on_concrete", (-6478, 6181, 551));
		namespace_4fe3eef1::function_b2f15380("amb_rain_on_concrete", (-6477, 6230, 548));
		namespace_4fe3eef1::function_b2f15380("amb_computer_error", (84, 9455, 140));
		namespace_4fe3eef1::function_b2f15380("amb_computer_error", (-950, 1088, 220));
		namespace_4fe3eef1::function_b2f15380("amb_computer_error", (-1351, 9976, 220));
		namespace_4fe3eef1::function_b2f15380("amb_computer_future", (-672, 9640, 216));
		namespace_4fe3eef1::function_b2f15380("amb_computer_future", (-1136, 9630, 200));
		namespace_4fe3eef1::function_b2f15380("amb_computer_future", (-783, 9675, 220));
		namespace_4fe3eef1::function_11908f52("amb_drill_walla", (-968, 9589, 380));
		namespace_4fe3eef1::function_11908f52("evt_drilling", (-968, 9589, 380));
	}
	else
	{
		namespace_4fe3eef1::function_b2f15380("amb_drill_walla", (-968, 9589, 380));
		namespace_4fe3eef1::function_b2f15380("evt_drilling", (-968, 9589, 380));
	}
}

/*
	Name: function_41d671f5
	Namespace: namespace_7a033503
	Checksum: 0x34DD995
	Offset: 0x11E0
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_41d671f5(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 > 0)
	{
		namespace_4fe3eef1::function_36bbd2b2("cp_barge_slowtime");
	}
	else
	{
		namespace_4fe3eef1::function_36bbd2b2("default");
	}
}

