#using scripts\codescripts\struct;

#namespace namespace_3e6d1b65;

/*
	Name: function_c35e6aab
	Namespace: namespace_3e6d1b65
	Checksum: 0x73AD388D
	Offset: 0x98
	Size: 0xBB
	Parameters: 3
	Flags: None
*/
function function_c35e6aab(var_3d29746, var_6f0b4e64, var_86f83f5c)
{
	var_5c8e462b = function_a8fb77bd();
	var_5c8e462b.var_3d29746 = var_3d29746;
	var_5c8e462b.var_6f0b4e64 = var_6f0b4e64;
	var_5c8e462b.var_86f83f5c = var_86f83f5c;
	var_5c8e462b.var_b55533bc = 0;
	var_5c8e462b.var_2395e945 = [];
	thread function_603848d5(var_5c8e462b);
	level.var_11bc09c9 = 0;
	return var_5c8e462b;
}

/*
	Name: function_bae40a28
	Namespace: namespace_3e6d1b65
	Checksum: 0x5FEE33AB
	Offset: 0x160
	Size: 0x145
	Parameters: 1
	Flags: None
*/
function function_bae40a28(var_5c8e462b)
{
	if(var_5c8e462b.var_b55533bc)
	{
		return;
	}
	var_5c8e462b.var_b55533bc = 1;
	level.var_11bc09c9++;
	var_2395e945 = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		var_2395e945[var_c957f6b6].var_bc51d8e6 = level.var_11bc09c9;
	}
	var_2395e945 = var_5c8e462b.var_2395e945;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		if(var_2395e945[var_c957f6b6].var_bc51d8e6 != level.var_11bc09c9)
		{
			continue;
		}
		if(var_2395e945[var_c957f6b6].var_a6107e0a[var_5c8e462b.var_3d29746].var_fdced91a)
		{
			var_2395e945[var_c957f6b6] function_8c7e4704(var_5c8e462b);
		}
	}
}

/*
	Name: function_54bdb053
	Namespace: namespace_3e6d1b65
	Checksum: 0xDC86346D
	Offset: 0x2B0
	Size: 0x14D
	Parameters: 1
	Flags: None
*/
function function_54bdb053(var_5c8e462b)
{
	if(!var_5c8e462b.var_b55533bc)
	{
		return;
	}
	var_5c8e462b.var_b55533bc = 0;
	level.var_11bc09c9++;
	var_2395e945 = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		var_2395e945[var_c957f6b6].var_bc51d8e6 = level.var_11bc09c9;
	}
	var_2395e945 = var_5c8e462b.var_2395e945;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		if(var_2395e945[var_c957f6b6].var_bc51d8e6 != level.var_11bc09c9)
		{
			continue;
		}
		if(var_2395e945[var_c957f6b6].var_a6107e0a[var_5c8e462b.var_3d29746].var_fdced91a)
		{
			var_2395e945[var_c957f6b6] function_639bd59d(var_5c8e462b, 0, 0);
		}
	}
}

/*
	Name: function_603848d5
	Namespace: namespace_3e6d1b65
	Checksum: 0x23CA836
	Offset: 0x408
	Size: 0x17F
	Parameters: 1
	Flags: None
*/
function function_603848d5(var_5c8e462b)
{
	for(;;)
	{
		level waittill("hash_f0cd13ff", var_5dc5e20a);
		if(!isdefined(var_5dc5e20a.var_a6107e0a))
		{
			var_5dc5e20a.var_a6107e0a = [];
		}
		var_5dc5e20a.var_a6107e0a[var_5c8e462b.var_3d29746] = function_a8fb77bd();
		var_5dc5e20a.var_a6107e0a[var_5c8e462b.var_3d29746].var_fdced91a = 0;
		var_5dc5e20a.var_a6107e0a[var_5c8e462b.var_3d29746].var_486b946d = 0;
		var_5dc5e20a.var_bc51d8e6 = -1;
		var_5c8e462b.var_2395e945[var_5c8e462b.var_2395e945.size] = var_5dc5e20a;
		var_5dc5e20a thread function_2163426b(var_5c8e462b);
		var_5dc5e20a thread function_be02cc45(var_5c8e462b);
		var_5dc5e20a thread function_99b59332(var_5c8e462b);
		var_5dc5e20a thread function_3c6a7d4b(var_5c8e462b);
		var_5dc5e20a thread function_c2658b46(var_5c8e462b);
	}
}

/*
	Name: function_2163426b
	Namespace: namespace_3e6d1b65
	Checksum: 0xCD9C963B
	Offset: 0x590
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_2163426b(var_5c8e462b)
{
	self waittill("hash_643a7daf");
	var_1adff245 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_5c8e462b.var_2395e945.size; var_c957f6b6++)
	{
		if(var_5c8e462b.var_2395e945[var_c957f6b6] != self)
		{
			var_1adff245[var_1adff245.size] = var_5c8e462b.var_2395e945[var_c957f6b6];
		}
	}
	var_5c8e462b.var_2395e945 = var_1adff245;
	self thread function_639bd59d(var_5c8e462b, 1, 1);
}

/*
	Name: function_99b59332
	Namespace: namespace_3e6d1b65
	Checksum: 0x2A31307B
	Offset: 0x668
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_99b59332(var_5c8e462b)
{
	self endon("hash_643a7daf");
	for(;;)
	{
		self waittill("hash_48e2debe");
		self thread function_639bd59d(var_5c8e462b, 1, 0);
	}
}

/*
	Name: function_3c6a7d4b
	Namespace: namespace_3e6d1b65
	Checksum: 0x572B2A1F
	Offset: 0x6B8
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_3c6a7d4b(var_5c8e462b)
{
	self endon("hash_643a7daf");
	for(;;)
	{
		self waittill("hash_a948754f");
		self thread function_639bd59d(var_5c8e462b, 1, 0);
	}
}

/*
	Name: function_be02cc45
	Namespace: namespace_3e6d1b65
	Checksum: 0x1CA3688B
	Offset: 0x708
	Size: 0x3F
	Parameters: 1
	Flags: None
*/
function function_be02cc45(var_5c8e462b)
{
	self endon("hash_643a7daf");
	for(;;)
	{
		self waittill("hash_8d7b7db3");
		self thread function_8c7e4704(var_5c8e462b);
	}
}

/*
	Name: function_c2658b46
	Namespace: namespace_3e6d1b65
	Checksum: 0xDB694100
	Offset: 0x750
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_c2658b46(var_5c8e462b)
{
	self endon("hash_643a7daf");
	for(;;)
	{
		self waittill("hash_5b910b26");
		self thread function_639bd59d(var_5c8e462b, 1, 0);
	}
}

/*
	Name: function_8c7e4704
	Namespace: namespace_3e6d1b65
	Checksum: 0xA5DED9D1
	Offset: 0x7A0
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function function_8c7e4704(var_5c8e462b)
{
	self.var_a6107e0a[var_5c8e462b.var_3d29746].var_fdced91a = 1;
	if(!var_5c8e462b.var_b55533bc)
	{
		return;
	}
	if(self.var_a6107e0a[var_5c8e462b.var_3d29746].var_486b946d)
	{
		return;
	}
	self.var_a6107e0a[var_5c8e462b.var_3d29746].var_486b946d = 1;
	self thread [[var_5c8e462b.var_6f0b4e64]]();
}

/*
	Name: function_639bd59d
	Namespace: namespace_3e6d1b65
	Checksum: 0xAD904511
	Offset: 0x858
	Size: 0xC3
	Parameters: 3
	Flags: None
*/
function function_639bd59d(var_5c8e462b, var_9a2ec265, var_78956cf4)
{
	if(!var_78956cf4 && var_9a2ec265)
	{
		self.var_a6107e0a[var_5c8e462b.var_3d29746].var_fdced91a = 0;
	}
	if(!self.var_a6107e0a[var_5c8e462b.var_3d29746].var_486b946d)
	{
		return;
	}
	if(!var_78956cf4)
	{
		self.var_a6107e0a[var_5c8e462b.var_3d29746].var_486b946d = 0;
	}
	self thread [[var_5c8e462b.var_86f83f5c]](var_78956cf4);
}

