#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\system_shared;

#namespace namespace_afd2f70b;

/*
	Name: function_a0e51d80
	Namespace: namespace_afd2f70b
	Checksum: 0xC5B65AEA
	Offset: 0x318
	Size: 0x1BF
	Parameters: 4
	Flags: None
*/
function function_a0e51d80(point, timeSec, SIZE, color)
{
	end = GetTime() + timeSec * 1000;
	var_cec7adaa = Int(SIZE / 2);
	l1 = point + (var_cec7adaa * -1, 0, 0);
	l2 = point + (var_cec7adaa, 0, 0);
	w1 = point + (0, var_cec7adaa * -1, 0);
	w2 = point + (0, var_cec7adaa, 0);
	h1 = point + (0, 0, var_cec7adaa * -1);
	h2 = point + (0, 0, var_cec7adaa);
	while(end > GetTime())
	{
		/#
			line(l1, l2, color, 1, 0, 1);
			line(w1, w2, color, 1, 0, 1);
			line(h1, h2, color, 1, 0, 1);
		#/
		wait(0.05);
	}
}

/*
	Name: function_b9907dab
	Namespace: namespace_afd2f70b
	Checksum: 0xFDD5B616
	Offset: 0x4E0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_b9907dab()
{
	/#
		execdevgui("Dev Block strings are not supported");
		level thread function_7874d5f4();
	#/
}

/*
	Name: function_244cbceb
	Namespace: namespace_afd2f70b
	Checksum: 0x85BBAA5
	Offset: 0x528
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_244cbceb()
{
	self notify("hash_244cbceb");
	self endon("hash_244cbceb");
	self endon("disconnect");
	self endon("spawned");
	while(1)
	{
		wait(1);
		if(isdefined(self.cybercom.var_ebeecfd5) && self.cybercom.var_ebeecfd5)
		{
			continue;
		}
		if(isdefined(self.cybercom.var_2e20c9bd))
		{
			slot = self GadgetGetSlot(self.cybercom.var_2e20c9bd);
			var_d921672c = self GadgetCharging(slot);
			if(var_d921672c)
			{
				self GadgetPowerChange(slot, 100);
			}
		}
	}
}

/*
	Name: function_7874d5f4
	Namespace: namespace_afd2f70b
	Checksum: 0x38569580
	Offset: 0x638
	Size: 0x70F
	Parameters: 0
	Flags: None
*/
function function_7874d5f4()
{
	SetDvar("devgui_cybercore", "");
	SetDvar("devgui_cybercore_upgrade", "");
	while(1)
	{
		cmd = GetDvarString("devgui_cybercore");
		if(cmd == "")
		{
			wait(0.5);
			continue;
		}
		playerNum = GetDvarInt("scr_player_number") - 1;
		players = GetPlayers();
		if(playerNum >= players.size)
		{
			SetDvar("devgui_cybercore", "");
			SetDvar("devgui_cybercore_upgrade", "");
			IPrintLnBold("Invalid Player specified. Use SET PLAYER NUMBER in Cybercom DEVGUI to set valid player");
			continue;
		}
		if(cmd == "juiceme")
		{
			SetDvar("devgui_cybercore", "");
			SetDvar("devgui_cybercore_upgrade", "");
			IPrintLnBold("Giving Constant Juice to all players");
			foreach(player in players)
			{
				player thread function_244cbceb();
			}
			continue;
		}
		if(cmd == "clearAll")
		{
			IPrintLnBold("Clearing all abilities on all players");
			foreach(player in players)
			{
				player namespace_726a1ef0::function_78908229();
				player namespace_d00ec32::function_c219b381();
			}
			SetDvar("devgui_cybercore", "");
			SetDvar("devgui_cybercore_upgrade", "");
			continue;
		}
		if(cmd == "giveAll")
		{
			IPrintLnBold("Giving all abilities on all players");
			foreach(player in players)
			{
				player namespace_d00ec32::giveallabilities();
			}
			SetDvar("devgui_cybercore", "");
			SetDvar("devgui_cybercore_upgrade", "");
			continue;
		}
		player = players[playerNum];
		playerNum++;
		upgrade = GetDvarInt("devgui_cybercore_upgrade");
		if(cmd == "clearPlayer")
		{
			IPrintLnBold("Clearing abilities on player: " + playerNum);
			player namespace_726a1ef0::function_78908229();
			player namespace_d00ec32::function_c219b381();
			SetDvar("devgui_cybercore", "");
			SetDvar("devgui_cybercore_upgrade", "");
			continue;
		}
		else if(cmd == "control")
		{
			SetDvar("devgui_cybercore", "");
			SetDvar("devgui_cybercore_upgrade", "");
			continue;
		}
		else if(cmd == "martial")
		{
			SetDvar("devgui_cybercore", "");
			SetDvar("devgui_cybercore_upgrade", "");
			continue;
		}
		else if(cmd == "chaos")
		{
			SetDvar("devgui_cybercore", "");
			SetDvar("devgui_cybercore_upgrade", "");
			continue;
		}
		if(isdefined(level.var_ab0cd3b2[cmd]))
		{
			player namespace_726a1ef0::function_8ffa26e2(cmd, upgrade);
		}
		else
		{
			player namespace_d00ec32::giveAbility(cmd, upgrade);
		}
		if(upgrade)
		{
		}
		else
		{
		}
		IPrintLnBold("TRUE" + "FALSE");
		SetDvar("devgui_cybercore", "");
		SetDvar("devgui_cybercore_upgrade", "");
	}
}

