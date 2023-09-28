#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_dev;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace dev_class;

/*
	Name: __init__sytem__
	Namespace: dev_class
	Checksum: 0xB809CA91
	Offset: 0x130
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	/#
		system::register("Dev Block strings are not supported", &__init__, undefined, undefined);
	#/
}

/*
	Name: __init__
	Namespace: dev_class
	Checksum: 0xC8239C6C
	Offset: 0x170
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	/#
		callback::on_start_gametype(&init);
	#/
}

/*
	Name: init
	Namespace: dev_class
	Checksum: 0x1E4C2319
	Offset: 0x1A8
	Size: 0x62F
	Parameters: 0
	Flags: None
*/
function init()
{
	/#
		dev_cac_overlay = 0;
		dev_cac_camera_on = 0;
		level thread dev_cac_gdt_update_think();
		for(;;)
		{
			wait(0.5);
			reset = 1;
			if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				continue;
			}
			host = util::getHostPlayer();
			if(!isdefined(level.dev_cac_player))
			{
				level.dev_cac_player = host;
			}
			switch(GetDvarString("Dev Block strings are not supported"))
			{
				case "Dev Block strings are not supported":
				{
					reset = 0;
					break;
				}
				case "Dev Block strings are not supported":
				{
					host thread dev_cac_dpad_think("Dev Block strings are not supported", &dev_cac_cycle_body, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					host thread dev_cac_dpad_think("Dev Block strings are not supported", &dev_cac_cycle_head, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					host thread dev_cac_dpad_think("Dev Block strings are not supported", &dev_cac_cycle_character, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					dev_cac_cycle_player(1);
					break;
				}
				case "Dev Block strings are not supported":
				{
					dev_cac_cycle_player(0);
					break;
				}
				case "Dev Block strings are not supported":
				{
					level notify("dev_cac_overlay_think");
					if(!dev_cac_overlay)
					{
						level thread dev_cac_overlay_think();
					}
					dev_cac_overlay = !dev_cac_overlay;
					break;
				}
				case "Dev Block strings are not supported":
				{
					dev_cac_set_model_range(&sort_greatest, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					dev_cac_set_model_range(&sort_least, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					dev_cac_set_model_range(&sort_greatest, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					dev_cac_set_model_range(&sort_least, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					dev_cac_set_model_range(&sort_greatest, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					dev_cac_set_model_range(&sort_least, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					dev_cac_camera_on = !dev_cac_camera_on;
					dev_cac_camera(dev_cac_camera_on);
					break;
				}
				case "Dev Block strings are not supported":
				{
					host thread dev_cac_dpad_think("Dev Block strings are not supported", &dev_cac_cycle_render_options, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					host thread dev_cac_dpad_think("Dev Block strings are not supported", &dev_cac_cycle_render_options, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					host thread dev_cac_dpad_think("Dev Block strings are not supported", &dev_cac_cycle_render_options, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					host thread dev_cac_dpad_think("Dev Block strings are not supported", &dev_cac_cycle_render_options, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					host thread dev_cac_dpad_think("Dev Block strings are not supported", &dev_cac_cycle_render_options, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					host thread dev_cac_dpad_think("Dev Block strings are not supported", &dev_cac_cycle_render_options, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					host thread dev_cac_dpad_think("Dev Block strings are not supported", &dev_cac_cycle_render_options, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					host thread dev_cac_dpad_think("Dev Block strings are not supported", &dev_cac_cycle_render_options, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					host thread dev_cac_dpad_think("Dev Block strings are not supported", &dev_cac_cycle_render_options, "Dev Block strings are not supported");
					break;
				}
				case "Dev Block strings are not supported":
				{
					host notify("dev_cac_dpad_think");
					break;
				}
			}
			if(reset)
			{
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
		}
	#/
}

/*
	Name: dev_cac_camera
	Namespace: dev_class
	Checksum: 0xBD4AA05C
	Offset: 0x7E0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function dev_cac_camera(on)
{
	/#
		if(on)
		{
			self SetClientThirdPerson(1);
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		else
		{
			self SetClientThirdPerson(0);
			SetDvar("Dev Block strings are not supported", GetDvarString("Dev Block strings are not supported"));
		}
	#/
}

/*
	Name: dev_cac_dpad_think
	Namespace: dev_class
	Checksum: 0xC027E541
	Offset: 0x8C8
	Size: 0x1FB
	Parameters: 3
	Flags: None
*/
function dev_cac_dpad_think(part_name, cycle_function, tag)
{
	/#
		self notify("dev_cac_dpad_think");
		self endon("dev_cac_dpad_think");
		self endon("disconnect");
		iprintln("Dev Block strings are not supported" + part_name + "Dev Block strings are not supported");
		iprintln("Dev Block strings are not supported" + part_name + "Dev Block strings are not supported");
		DPAD_LEFT = 0;
		DPAD_RIGHT = 0;
		level.dev_cac_player thread highlight_player();
		for(;;)
		{
			self SetActionSlot(3, "Dev Block strings are not supported");
			self SetActionSlot(4, "Dev Block strings are not supported");
			if(!DPAD_LEFT && self buttonpressed("Dev Block strings are not supported"))
			{
				[[cycle_function]](0, tag);
				DPAD_LEFT = 1;
			}
			else if(!self buttonpressed("Dev Block strings are not supported"))
			{
				DPAD_LEFT = 0;
			}
			if(!DPAD_RIGHT && self buttonpressed("Dev Block strings are not supported"))
			{
				[[cycle_function]](1, tag);
				DPAD_RIGHT = 1;
			}
			else if(!self buttonpressed("Dev Block strings are not supported"))
			{
				DPAD_RIGHT = 0;
			}
			wait(0.05);
		}
	#/
}

/*
	Name: next_in_list
	Namespace: dev_class
	Checksum: 0xD46A9E5
	Offset: 0xAD0
	Size: 0xB1
	Parameters: 2
	Flags: None
*/
function next_in_list(value, List)
{
	/#
		if(!isdefined(value))
		{
			return List[0];
		}
		for(i = 0; i < List.size; i++)
		{
			if(value == List[i])
			{
				if(isdefined(List[i + 1]))
				{
					value = List[i + 1];
				}
				else
				{
					value = List[0];
				}
				break;
			}
		}
		return value;
	#/
}

/*
	Name: prev_in_list
	Namespace: dev_class
	Checksum: 0xBE2908F
	Offset: 0xB90
	Size: 0xBB
	Parameters: 2
	Flags: None
*/
function prev_in_list(value, List)
{
	/#
		if(!isdefined(value))
		{
			return List[0];
		}
		for(i = 0; i < List.size; i++)
		{
			if(value == List[i])
			{
				if(isdefined(List[i - 1]))
				{
					value = List[i - 1];
				}
				else
				{
					value = List[List.size - 1];
				}
				break;
			}
		}
		return value;
	#/
}

/*
	Name: dev_cac_set_player_model
	Namespace: dev_class
	Checksum: 0x2885D000
	Offset: 0xC58
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function dev_cac_set_player_model()
{
	/#
		self.tag_stowed_back = undefined;
		self.tag_stowed_hip = undefined;
	#/
}

/*
	Name: dev_cac_cycle_body
	Namespace: dev_class
	Checksum: 0xCE4A8F44
	Offset: 0xC80
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function dev_cac_cycle_body(FORWARD, tag)
{
	/#
		if(!dev_cac_player_valid())
		{
			return;
		}
		player = level.dev_cac_player;
		keys = getArrayKeys(level.cac_functions["Dev Block strings are not supported"]);
		if(FORWARD)
		{
			player.cac_body_type = next_in_list(player.cac_body_type, keys);
		}
		else
		{
			player.cac_body_type = prev_in_list(player.cac_body_type, keys);
		}
		player dev_cac_set_player_model();
	#/
}

/*
	Name: dev_cac_cycle_head
	Namespace: dev_class
	Checksum: 0x699849DF
	Offset: 0xD80
	Size: 0x10B
	Parameters: 2
	Flags: None
*/
function dev_cac_cycle_head(FORWARD, tag)
{
	/#
		if(!dev_cac_player_valid())
		{
			return;
		}
		player = level.dev_cac_player;
		keys = getArrayKeys(level.cac_functions["Dev Block strings are not supported"]);
		if(FORWARD)
		{
			player.cac_head_type = next_in_list(player.cac_head_type, keys);
		}
		else
		{
			player.cac_head_type = prev_in_list(player.cac_head_type, keys);
		}
		player.cac_hat_type = "Dev Block strings are not supported";
		player dev_cac_set_player_model();
	#/
}

/*
	Name: dev_cac_cycle_character
	Namespace: dev_class
	Checksum: 0x4E339EE4
	Offset: 0xE98
	Size: 0x10B
	Parameters: 2
	Flags: None
*/
function dev_cac_cycle_character(FORWARD, tag)
{
	/#
		if(!dev_cac_player_valid())
		{
			return;
		}
		player = level.dev_cac_player;
		keys = getArrayKeys(level.cac_functions["Dev Block strings are not supported"]);
		if(FORWARD)
		{
			player.cac_body_type = next_in_list(player.cac_body_type, keys);
		}
		else
		{
			player.cac_body_type = prev_in_list(player.cac_body_type, keys);
		}
		player.cac_hat_type = "Dev Block strings are not supported";
		player dev_cac_set_player_model();
	#/
}

/*
	Name: dev_cac_cycle_render_options
	Namespace: dev_class
	Checksum: 0x71735C96
	Offset: 0xFB0
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function dev_cac_cycle_render_options(FORWARD, tag)
{
	/#
		if(!dev_cac_player_valid())
		{
			return;
		}
		level.dev_cac_player NextPlayerRenderOption(tag, FORWARD);
	#/
}

/*
	Name: dev_cac_player_valid
	Namespace: dev_class
	Checksum: 0xD5F94212
	Offset: 0x1010
	Size: 0x2D
	Parameters: 0
	Flags: None
*/
function dev_cac_player_valid()
{
	/#
		return isdefined(level.dev_cac_player) && level.dev_cac_player.sessionstate == "Dev Block strings are not supported";
	#/
}

/*
	Name: dev_cac_cycle_player
	Namespace: dev_class
	Checksum: 0x843FBC6E
	Offset: 0x1048
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function dev_cac_cycle_player(FORWARD)
{
	/#
		players = GetPlayers();
		for(i = 0; i < players.size; i++)
		{
			if(FORWARD)
			{
				level.dev_cac_player = next_in_list(level.dev_cac_player, players);
			}
			else
			{
				level.dev_cac_player = prev_in_list(level.dev_cac_player, players);
			}
			if(dev_cac_player_valid())
			{
				level.dev_cac_player thread highlight_player();
				return;
			}
		}
		level.dev_cac_player = undefined;
	#/
}

/*
	Name: highlight_player
	Namespace: dev_class
	Checksum: 0xCFB16530
	Offset: 0x1138
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function highlight_player()
{
	/#
		self SetHighlighted(1);
		wait(1);
		self SetHighlighted(0);
	#/
}

/*
	Name: dev_cac_overlay_think
	Namespace: dev_class
	Checksum: 0xC13C72C
	Offset: 0x1188
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function dev_cac_overlay_think()
{
	/#
		hud = dev_cac_overlay_create();
		level thread dev_cac_overlay_update(hud);
		level waittill("dev_cac_overlay_think");
		dev_cac_overlay_destroy(hud);
	#/
}

/*
	Name: dev_cac_overlay_update
	Namespace: dev_class
	Checksum: 0xB2224940
	Offset: 0x11F8
	Size: 0xF
	Parameters: 1
	Flags: None
*/
function dev_cac_overlay_update(hud)
{
	/#
	#/
}

/*
	Name: dev_cac_overlay_destroy
	Namespace: dev_class
	Checksum: 0x8237CC71
	Offset: 0x1210
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function dev_cac_overlay_destroy(hud)
{
	/#
		for(i = 0; i < hud.menu.size; i++)
		{
			hud.menu[i] destroy();
		}
		hud destroy();
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
	#/
}

/*
	Name: dev_cac_overlay_create
	Namespace: dev_class
	Checksum: 0xD62488CF
	Offset: 0x12C0
	Size: 0xD93
	Parameters: 0
	Flags: None
*/
function dev_cac_overlay_create()
{
	/#
		x = -80;
		y = 140;
		menu_name = "Dev Block strings are not supported";
		hud = dev::new_hud(menu_name, undefined, x, y, 1);
		hud SetShader("Dev Block strings are not supported", 185, 285);
		hud.alignX = "Dev Block strings are not supported";
		hud.alignY = "Dev Block strings are not supported";
		hud.sort = 10;
		hud.alpha = 0.6;
		hud.color = VectorScale((0, 0, 1), 0.5);
		x_offset = 100;
		hud.menu[0] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 10, 1.3);
		hud.menu[1] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 25, 1);
		hud.menu[2] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 35, 1);
		hud.menu[3] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 45, 1);
		hud.menu[4] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 55, 1);
		hud.menu[5] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 70, 1);
		hud.menu[6] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 80, 1);
		hud.menu[7] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 90, 1);
		hud.menu[8] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 100, 1);
		hud.menu[9] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 110, 1);
		hud.menu[10] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 120, 1);
		hud.menu[11] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 135, 1);
		hud.menu[12] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 145, 1);
		hud.menu[13] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 155, 1);
		hud.menu[14] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 170, 1);
		hud.menu[15] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 180, 1);
		hud.menu[16] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 190, 1);
		hud.menu[17] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 205, 1);
		hud.menu[18] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 215, 1);
		hud.menu[19] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 225, 1);
		hud.menu[20] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 235, 1);
		hud.menu[21] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 245, 1);
		hud.menu[22] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 255, 1);
		hud.menu[23] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 265, 1);
		hud.menu[24] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + 5, y + 275, 1);
		x_offset = 65;
		hud.menu[25] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 35, 1);
		hud.menu[26] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 45, 1);
		hud.menu[27] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 55, 1);
		x_offset = 100;
		hud.menu[28] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 80, 1);
		hud.menu[29] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 90, 1);
		hud.menu[30] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 100, 1);
		hud.menu[31] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 110, 1);
		hud.menu[32] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 120, 1);
		hud.menu[33] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 145, 1);
		hud.menu[34] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 155, 1);
		hud.menu[35] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 180, 1);
		hud.menu[36] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 190, 1);
		x_offset = 65;
		hud.menu[37] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 215, 1);
		hud.menu[38] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 225, 1);
		hud.menu[39] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 235, 1);
		hud.menu[40] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 245, 1);
		hud.menu[41] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 255, 1);
		hud.menu[42] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 265, 1);
		hud.menu[43] = dev::new_hud(menu_name, "Dev Block strings are not supported", x + x_offset, y + 275, 1);
		return hud;
	#/
}

/*
	Name: color
	Namespace: dev_class
	Checksum: 0xDC3C61B5
	Offset: 0x2060
	Size: 0xA7
	Parameters: 1
	Flags: None
*/
function color(value)
{
	/#
		r = 1;
		g = 1;
		b = 0;
		color = (0, 0, 0);
		if(value > 0)
		{
			r = r - value;
		}
		else
		{
			g = g + value;
		}
		c = (r, g, b);
		return c;
	#/
}

/*
	Name: dev_cac_gdt_update_think
	Namespace: dev_class
	Checksum: 0xC1A3CB59
	Offset: 0x2110
	Size: 0x1A5
	Parameters: 0
	Flags: None
*/
function dev_cac_gdt_update_think()
{
	/#
		for(;;)
		{
			level waittill("gdt_update", asset, keyValue);
			keyValue = StrTok(keyValue, "Dev Block strings are not supported");
			key = keyValue[0];
			switch(key)
			{
				case "Dev Block strings are not supported":
				{
					key = "Dev Block strings are not supported";
					break;
				}
				case "Dev Block strings are not supported":
				{
					key = "Dev Block strings are not supported";
					break;
				}
				case "Dev Block strings are not supported":
				{
					key = "Dev Block strings are not supported";
					break;
				}
				case "Dev Block strings are not supported":
				{
					key = "Dev Block strings are not supported";
					break;
				}
				case "Dev Block strings are not supported":
				{
					key = "Dev Block strings are not supported";
					break;
				}
				case default:
				{
					key = undefined;
					break;
				}
			}
			if(!isdefined(key))
			{
				break;
			}
			value = float(keyValue[1]);
			level.cac_attributes[key][asset] = value;
			players = GetPlayers();
			for(i = 0; i < players.size; i++)
			{
			}
		}
	#/
}

/*
	Name: sort_greatest
	Namespace: dev_class
	Checksum: 0x7994091D
	Offset: 0x22C0
	Size: 0xCF
	Parameters: 3
	Flags: None
*/
function sort_greatest(func, attribute, greatest)
{
	/#
		keys = getArrayKeys(level.cac_functions[func]);
		greatest = keys[0];
		for(i = 0; i < keys.size; i++)
		{
			if(level.cac_attributes[attribute][keys[i]] > level.cac_attributes[attribute][greatest])
			{
				greatest = keys[i];
			}
		}
		return greatest;
	#/
}

/*
	Name: sort_least
	Namespace: dev_class
	Checksum: 0xC0AE52FF
	Offset: 0x2398
	Size: 0xCF
	Parameters: 3
	Flags: None
*/
function sort_least(func, attribute, least)
{
	/#
		keys = getArrayKeys(level.cac_functions[func]);
		least = keys[0];
		for(i = 0; i < keys.size; i++)
		{
			if(level.cac_attributes[attribute][keys[i]] < level.cac_attributes[attribute][least])
			{
				least = keys[i];
			}
		}
		return least;
	#/
}

/*
	Name: dev_cac_set_model_range
	Namespace: dev_class
	Checksum: 0x1BFD45CF
	Offset: 0x2470
	Size: 0xC3
	Parameters: 2
	Flags: None
*/
function dev_cac_set_model_range(sort_function, attribute)
{
	/#
		if(!dev_cac_player_valid())
		{
			return;
		}
		player = level.dev_cac_player;
		player.cac_body_type = [[sort_function]]("Dev Block strings are not supported", attribute);
		player.cac_head_type = [[sort_function]]("Dev Block strings are not supported", attribute);
		player.cac_hat_type = [[sort_function]]("Dev Block strings are not supported", attribute);
		player dev_cac_set_player_model();
	#/
}

