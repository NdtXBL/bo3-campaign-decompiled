#using scripts\codescripts\struct;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;

#namespace namespace_953a6189;

/*
	Name: function_2dc19561
	Namespace: namespace_953a6189
	Checksum: 0xC131EAA6
	Offset: 0x120
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("friendicons", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_953a6189
	Checksum: 0xA43F9F55
	Offset: 0x160
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_dabbe128::function_c61b24c4(&function_c35e6aab);
}

/*
	Name: function_c35e6aab
	Namespace: namespace_953a6189
	Checksum: 0xBB8A5F8E
	Offset: 0x190
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	if(!level.var_de12b72f)
	{
		return;
	}
	if(function_6f1ebe57("scr_drawfriend") == "")
	{
		function_6c1294b8("scr_drawfriend", "0");
	}
	level.var_b525432f = function_4bd0142f("scr_drawfriend");
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_dabbe128::function_1b292fa6(&function_1b292fa6);
	for(;;)
	{
		function_32526d8e();
		wait(5);
	}
}

/*
	Name: function_aebcf025
	Namespace: namespace_953a6189
	Checksum: 0x9EF6A818
	Offset: 0x270
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	self endon("hash_643a7daf");
	self thread function_42c7b291();
}

/*
	Name: function_1b292fa6
	Namespace: namespace_953a6189
	Checksum: 0x9E1A4079
	Offset: 0x2A0
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_1b292fa6()
{
	self endon("hash_643a7daf");
	self.var_6d8f43c0 = "";
}

/*
	Name: function_42c7b291
	Namespace: namespace_953a6189
	Checksum: 0x73585CC4
	Offset: 0x2C8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_42c7b291()
{
	if(level.var_b525432f)
	{
		var_3e94206a = self.var_44fb8955["team"];
		self.var_6d8f43c0 = game["headicon_" + var_3e94206a];
		self.var_a36f83fb = var_3e94206a;
	}
}

/*
	Name: function_32526d8e
	Namespace: namespace_953a6189
	Checksum: 0xB4F71C2D
	Offset: 0x328
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_32526d8e()
{
	var_b525432f = function_f3087faa("scr_drawfriend");
	if(level.var_b525432f != var_b525432f)
	{
		level.var_b525432f = var_b525432f;
		function_a542b274();
	}
}

/*
	Name: function_a542b274
	Namespace: namespace_953a6189
	Checksum: 0x4FBA326A
	Offset: 0x388
	Size: 0x1AF
	Parameters: 0
	Flags: None
*/
function function_a542b274()
{
	var_2395e945 = level.var_2395e945;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		var_5dc5e20a = var_2395e945[var_c957f6b6];
		if(isdefined(var_5dc5e20a.var_44fb8955["team"]) && var_5dc5e20a.var_44fb8955["team"] != "spectator" && var_5dc5e20a.var_e0beb6ee == "playing")
		{
			if(level.var_b525432f)
			{
				var_3e94206a = self.var_44fb8955["team"];
				self.var_6d8f43c0 = game["headicon_" + var_3e94206a];
				self.var_a36f83fb = var_3e94206a;
				break;
			}
			var_2395e945 = level.var_2395e945;
			for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
			{
				var_5dc5e20a = var_2395e945[var_c957f6b6];
				if(isdefined(var_5dc5e20a.var_44fb8955["team"]) && var_5dc5e20a.var_44fb8955["team"] != "spectator" && var_5dc5e20a.var_e0beb6ee == "playing")
				{
					var_5dc5e20a.var_6d8f43c0 = "";
				}
			}
		}
	}
}

