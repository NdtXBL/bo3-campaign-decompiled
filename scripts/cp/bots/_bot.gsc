#using scripts\shared\bots\_bot;
#using scripts\shared\bots\_bot_combat;
#using scripts\shared\laststand_shared;
#using scripts\shared\system_shared;

#namespace bot;

/*
	Name: __init__sytem__
	Namespace: bot
	Checksum: 0x1BD9FABA
	Offset: 0xF8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("bot_cp", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: bot
	Checksum: 0x33F6B130
	Offset: 0x138
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function __init__()
{
	/#
		level.onBotConnect = &on_bot_connect;
		level.getbotthreats = &bot_combat::get_ai_threats;
		level.botPreCombat = &coop_pre_combat;
		level.botPostCombat = &coop_post_combat;
		level.botIdle = &follow_coop_players;
		level.botDevguiCmd = &coop_bot_devgui_cmd;
	#/
}

/*
	Name: on_bot_connect
	Namespace: bot
	Checksum: 0x3F4002B6
	Offset: 0x1D8
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function on_bot_connect()
{
	/#
		self endon("disconnect");
		wait(0.25);
		self notify("menuresponse", "Dev Block strings are not supported", "Dev Block strings are not supported");
		wait(0.25);
		if(isdefined(self.pers))
		{
			self.bcVoiceNumber = self.pers["Dev Block strings are not supported"];
		}
	#/
}

