#using scripts\shared\stealth;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_behavior;
#using scripts\shared\stealth_debug;
#using scripts\shared\stealth_vo;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_c8814633;

/*
	Name: function_c35e6aab
	Namespace: namespace_c8814633
	Checksum: 0x7E56CEDD
	Offset: 0x210
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_ad06727a));
	#/
	if(isdefined(self.var_ad06727a.var_279e4e97))
	{
		return;
	}
	if(!isdefined(self.var_ad06727a.var_279e4e97))
	{
		self.var_ad06727a.var_279e4e97 = function_a8fb77bd();
	}
	if(!isdefined(self.var_ad06727a.var_279e4e97.var_175a835f))
	{
		self.var_ad06727a.var_279e4e97.var_175a835f = function_a8fb77bd();
	}
	self function_78e2e218();
}

/*
	Name: function_b55533bc
	Namespace: namespace_c8814633
	Checksum: 0x969143A
	Offset: 0x2F0
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_b55533bc()
{
	return isdefined(self.var_ad06727a) && isdefined(self.var_ad06727a.var_279e4e97);
}

/*
	Name: function_78e2e218
	Namespace: namespace_c8814633
	Checksum: 0x9ADAB0AB
	Offset: 0x318
	Size: 0x273
	Parameters: 0
	Flags: None
*/
function function_78e2e218()
{
	self function_bb67c273("alert", &namespace_80045451::function_6c10e440, 3);
	if(function_8d0347b8(self))
	{
		self function_bb67c273("pain", &function_26f273e1, 2);
		self function_bb67c273("death", &function_26f273e1, 2);
		self function_bb67c273("damage", &function_26f273e1, 2);
		self function_bb67c273("combat_spread", &namespace_80045451::function_101ac5, 1);
		self function_bb67c273("combat_interest", &namespace_80045451::function_933965f6, 2);
		self function_bb67c273("stealth_sight_start", &namespace_80045451::function_ca6a0809, 1);
		self function_bb67c273("stealth_sight_max", &namespace_80045451::function_617b90af, 1);
		self function_bb67c273("stealth_sight_end", &namespace_80045451::function_85b3a352, 1);
		self function_bb67c273("witness_combat", &namespace_80045451::function_a7964595, 2);
		self function_bb67c273("investigate", &namespace_7829c86f::function_de77b9e6, 3);
		self function_bb67c273("stealth_vo", &namespace_234a4910::function_2756e5d4, 1);
	}
	self thread function_b349369d();
}

/*
	Name: function_b349369d
	Namespace: namespace_c8814633
	Checksum: 0x20A6CAA
	Offset: 0x598
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_b349369d()
{
	self namespace_82b91a51::function_5b7e3888("stop_stealth", "death");
	self notify("hash_2bbc4f84");
}

/*
	Name: function_bb67c273
	Namespace: namespace_c8814633
	Checksum: 0x7632F097
	Offset: 0x5E0
	Size: 0x195
	Parameters: 3
	Flags: None
*/
function function_bb67c273(var_97bb242a, var_86365a77, var_8a0dd434)
{
	if(!isdefined(var_8a0dd434))
	{
		var_8a0dd434 = 0;
	}
	if(!isdefined(level.var_ad06727a.var_569d1b21))
	{
		level.var_ad06727a.var_569d1b21 = [];
	}
	if(!isdefined(level.var_ad06727a.var_569d1b21[var_97bb242a]))
	{
		level.var_ad06727a.var_569d1b21[var_97bb242a] = var_86365a77;
	}
	if(var_97bb242a == "death")
	{
		self thread function_551bd4f3();
		break;
	}
	switch(var_8a0dd434)
	{
		case 0:
		{
			self thread function_44782a56(var_97bb242a);
			break;
		}
		case 1:
		{
			self thread function_6a7aa4bf(var_97bb242a);
			break;
		}
		case 2:
		{
			self thread function_f8733584(var_97bb242a);
			break;
		}
		case 3:
		{
			self thread function_1e75afed(var_97bb242a);
			break;
		}
		case default:
		{
			/#
				function_2e4b8c78("Dev Block strings are not supported" + var_8a0dd434);
			#/
			break;
		}
	}
}

/*
	Name: function_44782a56
	Namespace: namespace_c8814633
	Checksum: 0xA5DCAAD
	Offset: 0x780
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_44782a56(var_97bb242a)
{
	self endon("hash_2bbc4f84");
	while(1)
	{
		self waittill(var_97bb242a);
		self thread function_5b52d0d9(var_97bb242a);
	}
}

/*
	Name: function_6a7aa4bf
	Namespace: namespace_c8814633
	Checksum: 0x4B18709B
	Offset: 0x7D0
	Size: 0x57
	Parameters: 1
	Flags: None
*/
function function_6a7aa4bf(var_97bb242a)
{
	self endon("hash_2bbc4f84");
	while(1)
	{
		self waittill(var_97bb242a, var_9b32d4cc);
		self thread function_5b52d0d9(var_97bb242a, var_9b32d4cc);
	}
}

/*
	Name: function_f8733584
	Namespace: namespace_c8814633
	Checksum: 0x3AD7200B
	Offset: 0x830
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_f8733584(var_97bb242a)
{
	self endon("hash_2bbc4f84");
	while(1)
	{
		self waittill(var_97bb242a, var_9b32d4cc, var_d3a4407);
		self thread function_5b52d0d9(var_97bb242a, var_9b32d4cc, var_d3a4407);
	}
}

/*
	Name: function_551bd4f3
	Namespace: namespace_c8814633
	Checksum: 0xFB7E1ED0
	Offset: 0x8A0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_551bd4f3()
{
	self endon("hash_94ff6d85");
	self waittill("hash_128f8789", var_9b32d4cc, var_d3a4407);
	self thread function_5b52d0d9("death", var_9b32d4cc, var_d3a4407);
}

/*
	Name: function_1e75afed
	Namespace: namespace_c8814633
	Checksum: 0xE6778B0E
	Offset: 0x908
	Size: 0x77
	Parameters: 1
	Flags: None
*/
function function_1e75afed(var_97bb242a)
{
	self endon("hash_2bbc4f84");
	while(1)
	{
		self waittill(var_97bb242a, var_9b32d4cc, var_d3a4407, var_e737c99e);
		self thread function_5b52d0d9(var_97bb242a, var_9b32d4cc, var_d3a4407, var_e737c99e);
	}
}

/*
	Name: function_5b52d0d9
	Namespace: namespace_c8814633
	Checksum: 0x56171FA8
	Offset: 0x988
	Size: 0x2C5
	Parameters: 4
	Flags: Private
*/
function private function_5b52d0d9(var_97bb242a, var_9b32d4cc, var_d3a4407, var_e737c99e)
{
	self endon("hash_94ff6d85");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_97bb242a));
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_ad06727a.var_569d1b21[var_97bb242a]));
	#/
	if(!isdefined(self))
	{
		return;
	}
	if(!isdefined(self.var_ad06727a))
	{
		return;
	}
	if(!isdefined(level.var_ad06727a))
	{
		return;
	}
	if(var_97bb242a != "alert" || (!isdefined(self.var_89b9fc6) && self.var_89b9fc6))
	{
		if(isdefined(self.var_c584775c) && self.var_c584775c && var_97bb242a != "death")
		{
			return;
		}
	}
	/#
		if(namespace_e449108e::function_b55533bc() && isdefined(self) && function_fd096044(self))
		{
			var_66992f5e = "Dev Block strings are not supported";
			if(isdefined(var_9b32d4cc))
			{
				var_66992f5e = "Dev Block strings are not supported" + namespace_e449108e::function_7564640c(var_9b32d4cc) + var_66992f5e;
			}
			self thread namespace_e449108e::function_1c1f41ef(var_97bb242a + "Dev Block strings are not supported" + var_66992f5e + "Dev Block strings are not supported", VectorScale((1, 1, 1), 0.75), 1, 0.5, self.var_722885f3 + VectorScale((0, 0, 1), 30), 3);
		}
	#/
	self.var_ad06727a.var_279e4e97.var_175a835f.var_4be20d44 = var_97bb242a;
	self.var_ad06727a.var_279e4e97.var_175a835f.var_b5d0b83e[0] = var_9b32d4cc;
	self.var_ad06727a.var_279e4e97.var_175a835f.var_b5d0b83e[1] = var_d3a4407;
	self.var_ad06727a.var_279e4e97.var_175a835f.var_b5d0b83e[2] = var_e737c99e;
	self [[level.var_ad06727a.var_569d1b21[var_97bb242a]]](self.var_ad06727a.var_279e4e97.var_175a835f);
}

/*
	Name: function_26f273e1
	Namespace: namespace_c8814633
	Checksum: 0xA19E0DE5
	Offset: 0xC58
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_26f273e1(var_904f1fb9)
{
	if(!isdefined(self))
	{
		return;
	}
	var_677b3e78 = var_904f1fb9.var_b5d0b83e[0];
	if(!function_fd096044(var_677b3e78))
	{
		var_677b3e78 = var_904f1fb9.var_b5d0b83e[1];
	}
	wait(0.05);
	if(!isdefined(self) || !isdefined(self.var_3e94206a))
	{
		return;
	}
	if(isdefined(var_677b3e78) && var_677b3e78.var_3e94206a != self.var_3e94206a)
	{
		if(function_5b49d38c(self))
		{
			self notify("hash_78a7a5b9", "combat", var_677b3e78.var_722885f3, var_677b3e78, "took_damage");
		}
		self function_7dd521be(self.var_3e94206a, self.var_722885f3, 300, 128, 1, "witness_combat", var_677b3e78, "saw_combat");
	}
}

/*
	Name: function_7dd521be
	Namespace: namespace_c8814633
	Checksum: 0x393ACEDC
	Offset: 0xD98
	Size: 0x269
	Parameters: 11
	Flags: None
*/
function function_7dd521be(var_6d4542e6, var_b71ed4a2, var_f8456b37, var_57258c7d, var_75ed22dd, var_97bb242a, var_9b32d4cc, var_d3a4407, var_e737c99e, var_292b6591, var_328eb28)
{
	var_41436963 = var_f8456b37 * var_f8456b37;
	var_3493c8d4 = function_c20c2e8();
	foreach(var_2af0f4dc in var_3493c8d4)
	{
		if(!function_5b49d38c(var_2af0f4dc))
		{
			continue;
		}
		if(!isdefined(self) || !var_2af0f4dc === self && function_cb3d1c9b(var_b71ed4a2, var_2af0f4dc.var_722885f3) < var_41436963)
		{
			if(var_2af0f4dc namespace_80045451::function_b55533bc() && var_2af0f4dc namespace_80045451::function_739525d() == "combat")
			{
				continue;
			}
			if(function_69c2f683(var_2af0f4dc.var_722885f3[2] - self.var_722885f3[2]) > var_57258c7d)
			{
				continue;
			}
			var_be41c5a2 = !var_75ed22dd;
			if(var_75ed22dd)
			{
				var_be41c5a2 = var_2af0f4dc namespace_ad06727a::function_7ee3d9cd(self);
			}
			if(var_be41c5a2 && var_75ed22dd)
			{
				var_2af0f4dc notify(var_97bb242a, var_9b32d4cc, var_d3a4407, var_e737c99e, var_292b6591, var_328eb28);
				continue;
			}
			if(var_be41c5a2)
			{
				var_2af0f4dc notify(var_97bb242a, var_9b32d4cc, var_d3a4407, var_e737c99e, var_292b6591, var_328eb28);
			}
		}
	}
}

