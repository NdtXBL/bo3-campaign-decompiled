#using scripts\codescripts\struct;
#using scripts\shared\audio_shared;

#namespace namespace_6cf6620e;

/*
	Name: function_d290ebfa
	Namespace: namespace_6cf6620e
	Checksum: 0xD287EA97
	Offset: 0x110
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level thread function_ceb762bb();
	level thread function_b22d6998();
	level thread function_92b27557();
	level thread function_20ab061c();
	level thread function_46ad8085();
}

/*
	Name: function_ceb762bb
	Namespace: namespace_6cf6620e
	Checksum: 0x79381DAC
	Offset: 0x198
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_ceb762bb()
{
	level waittill("hash_2ac6dc33");
	namespace_4fe3eef1::function_36bbd2b2("cp_lotus_vtol_hallway");
}

/*
	Name: function_b22d6998
	Namespace: namespace_6cf6620e
	Checksum: 0x367BE17F
	Offset: 0x1D0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_b22d6998()
{
	level waittill("hash_bb262c24");
	namespace_4fe3eef1::function_36bbd2b2("default");
}

/*
	Name: function_92b27557
	Namespace: namespace_6cf6620e
	Checksum: 0xC32806F6
	Offset: 0x208
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_92b27557()
{
	var_4dbf3ae3 = function_6ada35ba(0, "stress_1", "targetname");
	if(!isdefined(var_4dbf3ae3))
	{
		return;
	}
	while(1)
	{
		var_4dbf3ae3 waittill("hash_4dbf3ae3", var_aef176e7);
		if(var_aef176e7 function_65f192a6())
		{
			function_921a1574(0, "amb_metal_shake", (-1015, -323, 15307));
			break;
		}
	}
}

/*
	Name: function_20ab061c
	Namespace: namespace_6cf6620e
	Checksum: 0x7893866F
	Offset: 0x2C8
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_20ab061c()
{
	var_4dbf3ae3 = function_6ada35ba(0, "stress_2", "targetname");
	if(!isdefined(var_4dbf3ae3))
	{
		return;
	}
	while(1)
	{
		var_4dbf3ae3 waittill("hash_4dbf3ae3", var_aef176e7);
		if(var_aef176e7 function_65f192a6())
		{
			function_921a1574(0, "amb_metal_shake", (-852, -280, 15407));
			break;
		}
	}
}

/*
	Name: function_46ad8085
	Namespace: namespace_6cf6620e
	Checksum: 0xB60AA7F0
	Offset: 0x388
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_46ad8085()
{
	var_4dbf3ae3 = function_6ada35ba(0, "stress_3", "targetname");
	if(!isdefined(var_4dbf3ae3))
	{
		return;
	}
	while(1)
	{
		var_4dbf3ae3 waittill("hash_4dbf3ae3", var_aef176e7);
		if(var_aef176e7 function_65f192a6())
		{
			function_921a1574(0, "amb_metal_shake", (-11199, -65, 15377));
			break;
		}
	}
}

