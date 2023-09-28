#using scripts\codescripts\struct;
#using scripts\shared\ai\systems\face;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace dialog;

/*
	Name: __init__sytem__
	Namespace: dialog
	Checksum: 0xAE9083F0
	Offset: 0x370
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("dialog", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: dialog
	Checksum: 0x11DB08A0
	Offset: 0x3B0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function __init__()
{
	level.vo = spawnstruct();
	level.vo.nag_groups = [];
	callback::on_spawned(&function_bfb57e5a);
}

/*
	Name: function_bfb57e5a
	Namespace: dialog
	Checksum: 0xA24DCB57
	Offset: 0x410
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_bfb57e5a()
{
	self LUINotifyEvent(&"offsite_comms_complete");
}

/*
	Name: add
	Namespace: dialog
	Checksum: 0xC4C71D70
	Offset: 0x440
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function add(str_dialog_name, str_vox_file)
{
	/#
		Assert(isdefined(str_dialog_name), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(str_vox_file), "Dev Block strings are not supported");
	#/
	if(!isdefined(level.scr_sound))
	{
		level.scr_sound = [];
	}
	if(!isdefined(level.scr_sound["generic"]))
	{
		level.scr_sound["generic"] = [];
	}
	level.scr_sound["generic"][str_dialog_name] = str_vox_file;
	animation::add_global_notetrack_handler("vox#" + str_dialog_name, &function_3c0e32a, 0, str_dialog_name);
}

/*
	Name: function_3c0e32a
	Namespace: dialog
	Checksum: 0xA941FC30
	Offset: 0x548
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_3c0e32a(str_vo_line)
{
	if(isPlayer(self))
	{
		if(self flagsys::get("shared_igc"))
		{
			function_13b3b16a(str_vo_line);
		}
		else
		{
			say(str_vo_line);
		}
	}
	else if(function_9fc88ab6(str_vo_line))
	{
		level function_13b3b16a(str_vo_line);
	}
	else
	{
		say(str_vo_line);
	}
}

/*
	Name: function_9fc88ab6
	Namespace: dialog
	Checksum: 0x91F25A
	Offset: 0x610
	Size: 0x81
	Parameters: 1
	Flags: None
*/
function function_9fc88ab6(str_script_id)
{
	str_alias = undefined;
	if(isdefined(level.scr_sound) && isdefined(level.scr_sound["generic"]))
	{
		str_alias = level.scr_sound["generic"][str_script_id];
	}
	if(!isdefined(str_alias))
	{
		return 0;
	}
	return StrEndsWith(str_alias, "plyr");
}

/*
	Name: say
	Namespace: dialog
	Checksum: 0xCD48912E
	Offset: 0x6A0
	Size: 0x163
	Parameters: 5
	Flags: None
*/
function say(str_vo_line, n_delay, b_fake_ent, var_4acdf566, var_43937b21)
{
	if(!isdefined(b_fake_ent))
	{
		b_fake_ent = 0;
	}
	ent = self;
	if(self == level)
	{
		if(isdefined(var_43937b21) && var_43937b21)
		{
			ent = spawn("script_model", (0, 0, 0));
			level.e_speaker = ent;
		}
		else
		{
			ent = spawn("script_origin", (0, 0, 0));
		}
		waittillframeend;
		level notify("hash_120cde7f", ent);
		b_fake_ent = 1;
	}
	ent endon("death");
	ent thread function_263a2879(str_vo_line, n_delay, b_fake_ent, var_4acdf566);
	ent waittillmatch("done speaking");
	if(self == level)
	{
		ent delete();
		if(isdefined(level.e_speaker))
		{
			level.e_speaker delete();
		}
	}
}

/*
	Name: function_263a2879
	Namespace: dialog
	Checksum: 0xE81D3E10
	Offset: 0x810
	Size: 0x2A5
	Parameters: 4
	Flags: Private
*/
function private function_263a2879(str_vo_line, n_delay, b_fake_ent, var_4acdf566)
{
	if(!isdefined(b_fake_ent))
	{
		b_fake_ent = 0;
	}
	self endon("death");
	self.is_about_to_talk = 1;
	self thread _on_kill_pending_dialog(str_vo_line);
	level endon("kill_pending_dialog");
	self endon("kill_pending_dialog");
	if(isdefined(n_delay) && n_delay > 0)
	{
		wait(n_delay);
	}
	if(self.classname === "script_origin")
	{
		b_fake_ent = 1;
	}
	if(!b_fake_ent)
	{
		if(!isdefined(self.health) || self.health <= 0)
		{
			if(!isPlayer(self) || (!isdefined(self.laststand) && self.laststand))
			{
				/#
					ASSERTMSG("Dev Block strings are not supported");
				#/
				self.is_about_to_talk = undefined;
				self notify("done speaking", str_vo_line);
				return;
			}
		}
	}
	self.is_talking = 1;
	if(isdefined(self.archetype) && (self.archetype == "human" || self.archetype == "human_riotshield" || self.archetype == "human_rpg" || self.archetype == "civilian"))
	{
		self clientfield::set("facial_dial", 1);
	}
	self face::SaySpecificDialogue(0, str_vo_line, 1, undefined, undefined, undefined, var_4acdf566);
	self waittillmatch("done speaking");
	if(isdefined(self.archetype) && (self.archetype == "human" || self.archetype == "human_riotshield" || self.archetype == "human_rpg" || self.archetype == "civilian"))
	{
		self clientfield::set("facial_dial", 0);
	}
	self.is_talking = undefined;
	self.is_about_to_talk = undefined;
}

/*
	Name: _on_kill_pending_dialog
	Namespace: dialog
	Checksum: 0xD0441982
	Offset: 0xAC0
	Size: 0x5D
	Parameters: 1
	Flags: None
*/
function _on_kill_pending_dialog(str_vo_line)
{
	self endon("death");
	self notify("hash_8e6b4ba3");
	self endon("hash_8e6b4ba3");
	util::waittill_any_ents_two(level, "kill_pending_dialog", self, "kill_pending_dialog");
	self.is_about_to_talk = undefined;
}

/*
	Name: function_13b3b16a
	Namespace: dialog
	Checksum: 0xF1C3DFEB
	Offset: 0xB28
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_13b3b16a(str_vo_line, n_delay)
{
	if(self == level)
	{
		foreach(player in level.activePlayers)
		{
			player thread function_13b3b16a(str_vo_line, n_delay);
		}
		Array::wait_till_match(level.activePlayers, "done speaking", str_vo_line);
	}
	else
	{
		say(str_vo_line, n_delay, 0, self);
	}
}

/*
	Name: remote
	Namespace: dialog
	Checksum: 0xB79BC563
	Offset: 0xC28
	Size: 0x391
	Parameters: 5
	Flags: None
*/
function remote(str_vo_line, n_delay, str_type, var_4acdf566, var_43937b21)
{
	if(!isdefined(str_type))
	{
		str_type = "dni";
	}
	if(str_type === "dni")
	{
		var_8ef9b1c0 = StrTok(level.scr_sound["generic"][str_vo_line], "_");
		var_46866c13 = undefined;
		switch(var_8ef9b1c0[var_8ef9b1c0.size - 1])
		{
			case "diaz":
			{
				var_46866c13 = &"CPUI_DIAZ_SEBASTIAN";
				break;
			}
			case "ecmd":
			{
				var_46866c13 = &"CPUI_EGYPTIAN_COMMAND";
				break;
			}
			case "xiul":
			{
				var_46866c13 = &"CPUI_GOH_XIULAN";
				break;
			}
			case "hend":
			{
				var_46866c13 = &"CPUI_HENDRICKS_JACOB";
				break;
			}
			case "khal":
			{
				var_46866c13 = &"CPUI_KHALIL_ZEYAD";
				break;
			}
			case "mare":
			{
				var_46866c13 = &"CPUI_MARETTI_PETER";
				break;
			}
			case "kane":
			{
				var_46866c13 = &"CPUI_KANE_RACHEL";
				break;
			}
			case "hall":
			{
				var_46866c13 = &"CPUI_HALL_SARAH";
				break;
			}
			case "tayr":
			{
				var_46866c13 = &"CPUI_TAYLOR_JOHN";
				break;
			}
			case "vtpl":
			case "wapl":
			{
				var_46866c13 = &"CPUI_VTOL_PILOT";
				break;
			}
			case default:
			{
				var_46866c13 = undefined;
				break;
			}
		}
		if(isdefined(var_46866c13) && !SessionModeIsCampaignZombiesGame())
		{
			foreach(player in level.players)
			{
				if(!isdefined(var_4acdf566) || var_4acdf566 == player)
				{
					player LUINotifyEvent(&"offsite_comms_message", 1, var_46866c13);
				}
			}
		}
	}
	level say(str_vo_line, n_delay, 1, var_4acdf566, var_43937b21);
	if(!SessionModeIsCampaignZombiesGame())
	{
		if(str_type === "dni")
		{
			foreach(player in level.players)
			{
				if(!isdefined(var_4acdf566) || var_4acdf566 == player)
				{
					player LUINotifyEvent(&"offsite_comms_complete");
				}
			}
		}
	}
}

