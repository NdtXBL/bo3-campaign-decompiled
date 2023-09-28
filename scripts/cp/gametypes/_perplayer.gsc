#using scripts\codescripts\struct;

#namespace perplayer;

/*
	Name: init
	Namespace: perplayer
	Checksum: 0x73AD388D
	Offset: 0x98
	Size: 0xBB
	Parameters: 3
	Flags: None
*/
function init(id, playerBeginCallback, playerEndCallback)
{
	handler = spawnstruct();
	handler.id = id;
	handler.playerBeginCallback = playerBeginCallback;
	handler.playerEndCallback = playerEndCallback;
	handler.enabled = 0;
	handler.players = [];
	thread onPlayerConnect(handler);
	level.handlerGlobalFlagVal = 0;
	return handler;
}

/*
	Name: enable
	Namespace: perplayer
	Checksum: 0x5FEE33AB
	Offset: 0x160
	Size: 0x145
	Parameters: 1
	Flags: None
*/
function enable(handler)
{
	if(handler.enabled)
	{
		return;
	}
	handler.enabled = 1;
	level.handlerGlobalFlagVal++;
	players = GetPlayers();
	for(i = 0; i < players.size; i++)
	{
		players[i].handlerFlagVal = level.handlerGlobalFlagVal;
	}
	players = handler.players;
	for(i = 0; i < players.size; i++)
	{
		if(players[i].handlerFlagVal != level.handlerGlobalFlagVal)
		{
			continue;
		}
		if(players[i].handlers[handler.id].ready)
		{
			players[i] handlePlayer(handler);
		}
	}
}

/*
	Name: disable
	Namespace: perplayer
	Checksum: 0xDC86346D
	Offset: 0x2B0
	Size: 0x14D
	Parameters: 1
	Flags: None
*/
function disable(handler)
{
	if(!handler.enabled)
	{
		return;
	}
	handler.enabled = 0;
	level.handlerGlobalFlagVal++;
	players = GetPlayers();
	for(i = 0; i < players.size; i++)
	{
		players[i].handlerFlagVal = level.handlerGlobalFlagVal;
	}
	players = handler.players;
	for(i = 0; i < players.size; i++)
	{
		if(players[i].handlerFlagVal != level.handlerGlobalFlagVal)
		{
			continue;
		}
		if(players[i].handlers[handler.id].ready)
		{
			players[i] unHandlePlayer(handler, 0, 0);
		}
	}
}

/*
	Name: onPlayerConnect
	Namespace: perplayer
	Checksum: 0x23CA836
	Offset: 0x408
	Size: 0x17F
	Parameters: 1
	Flags: None
*/
function onPlayerConnect(handler)
{
	for(;;)
	{
		level waittill("connecting", player);
		if(!isdefined(player.handlers))
		{
			player.handlers = [];
		}
		player.handlers[handler.id] = spawnstruct();
		player.handlers[handler.id].ready = 0;
		player.handlers[handler.id].handled = 0;
		player.handlerFlagVal = -1;
		handler.players[handler.players.size] = player;
		player thread onPlayerDisconnect(handler);
		player thread onPlayerSpawned(handler);
		player thread onJoinedTeam(handler);
		player thread onJoinedSpectators(handler);
		player thread onPlayerKilled(handler);
	}
}

/*
	Name: onPlayerDisconnect
	Namespace: perplayer
	Checksum: 0xCD9C963B
	Offset: 0x590
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function onPlayerDisconnect(handler)
{
	self waittill("disconnect");
	newplayers = [];
	for(i = 0; i < handler.players.size; i++)
	{
		if(handler.players[i] != self)
		{
			newplayers[newplayers.size] = handler.players[i];
		}
	}
	handler.players = newplayers;
	self thread unHandlePlayer(handler, 1, 1);
}

/*
	Name: onJoinedTeam
	Namespace: perplayer
	Checksum: 0x2A31307B
	Offset: 0x668
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function onJoinedTeam(handler)
{
	self endon("disconnect");
	for(;;)
	{
		self waittill("joined_team");
		self thread unHandlePlayer(handler, 1, 0);
	}
}

/*
	Name: onJoinedSpectators
	Namespace: perplayer
	Checksum: 0x572B2A1F
	Offset: 0x6B8
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function onJoinedSpectators(handler)
{
	self endon("disconnect");
	for(;;)
	{
		self waittill("joined_spectators");
		self thread unHandlePlayer(handler, 1, 0);
	}
}

/*
	Name: onPlayerSpawned
	Namespace: perplayer
	Checksum: 0x1CA3688B
	Offset: 0x708
	Size: 0x3F
	Parameters: 1
	Flags: None
*/
function onPlayerSpawned(handler)
{
	self endon("disconnect");
	for(;;)
	{
		self waittill("spawned_player");
		self thread handlePlayer(handler);
	}
}

/*
	Name: onPlayerKilled
	Namespace: perplayer
	Checksum: 0xDB694100
	Offset: 0x750
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function onPlayerKilled(handler)
{
	self endon("disconnect");
	for(;;)
	{
		self waittill("killed_player");
		self thread unHandlePlayer(handler, 1, 0);
	}
}

/*
	Name: handlePlayer
	Namespace: perplayer
	Checksum: 0xA5DED9D1
	Offset: 0x7A0
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function handlePlayer(handler)
{
	self.handlers[handler.id].ready = 1;
	if(!handler.enabled)
	{
		return;
	}
	if(self.handlers[handler.id].handled)
	{
		return;
	}
	self.handlers[handler.id].handled = 1;
	self thread [[handler.playerBeginCallback]]();
}

/*
	Name: unHandlePlayer
	Namespace: perplayer
	Checksum: 0xAD904511
	Offset: 0x858
	Size: 0xC3
	Parameters: 3
	Flags: None
*/
function unHandlePlayer(handler, unsetready, disconnected)
{
	if(!disconnected && unsetready)
	{
		self.handlers[handler.id].ready = 0;
	}
	if(!self.handlers[handler.id].handled)
	{
		return;
	}
	if(!disconnected)
	{
		self.handlers[handler.id].handled = 0;
	}
	self thread [[handler.playerEndCallback]](disconnected);
}

