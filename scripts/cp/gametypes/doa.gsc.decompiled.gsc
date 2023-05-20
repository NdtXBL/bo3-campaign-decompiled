#using scripts\cp\_callbacks;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\ai\margwa;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\throttle_shared;

#namespace namespace_30ddac33;

/*
	Name: function_a106fbcc
	Namespace: namespace_30ddac33
	Checksum: 0x906F51FC
	Offset: 0x350
	Size: 0x17B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_a106fbcc()
{
	level.var_be177839 = "";
	namespace_bea63b8a::function_2bafb34f("cybercom");
	namespace_bea63b8a::function_2bafb34f("healthoverlay");
	namespace_bea63b8a::function_2bafb34f("challenges");
	namespace_bea63b8a::function_2bafb34f("rank");
	namespace_bea63b8a::function_2bafb34f("hacker_tool");
	namespace_bea63b8a::function_2bafb34f("grapple");
	namespace_bea63b8a::function_2bafb34f("replay_gun");
	namespace_bea63b8a::function_2bafb34f("riotshield");
	namespace_bea63b8a::function_2bafb34f("oed");
	namespace_bea63b8a::function_2bafb34f("explosive_bolt");
	namespace_bea63b8a::function_2bafb34f("empgrenade");
	namespace_bea63b8a::function_2bafb34f("spawning");
	namespace_bea63b8a::function_2bafb34f("save");
	namespace_bea63b8a::function_2bafb34f("hud_message");
	namespace_bea63b8a::function_2bafb34f("friendlyfire");
}

/*
	Name: function_d290ebfa
	Namespace: namespace_30ddac33
	Checksum: 0x5FCC44BF
	Offset: 0x4D8
	Size: 0x2CF
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level.var_e2c19907 = 1;
	namespace_2282eece::function_c35e6aab();
	level.var_76c6e677 = function_57b2be45(function_6f1ebe57("g_gametype"));
	namespace_82b91a51::function_4a3f3ebe(0, 9);
	namespace_82b91a51::function_aa42b85a(0, 0);
	namespace_82b91a51::function_d094fb41(0, 0);
	namespace_82b91a51::function_549dd2f3(0, 10);
	namespace_82b91a51::function_779e30c5(0, 0);
	namespace_82b91a51::function_69229fbb(0, 100);
	namespace_2282eece::function_9f81beec(level.var_76c6e677, 15, 0, 1440);
	level.var_f7711ebc = 0;
	level.var_a84b87c9 = 0;
	level.var_261dc085 = 0;
	level.var_f29440cb = 0;
	level.var_de12b72f = 1;
	level.var_edeba204 = 1;
	level.var_34685338 = &function_34685338;
	level.var_19bc9234 = &function_19bc9234;
	level.var_c2658b46 = &function_c2658b46;
	level.var_cd3e4f52 = &function_16220a9c;
	level.var_2b829c4e = &function_fad7287a;
	level.var_8cc5e3c = 1;
	level.var_29d9f951 = 1;
	level.var_c8fa349a = 0;
	level.var_f1b9c317 = 0;
	level.var_fb734762 = &namespace_2282eece::function_90f415c9;
	level.var_67d7b8a9 = &namespace_2282eece::function_90f415c9;
	level.var_257d1c47 = &function_257d1c47;
	namespace_a230c2b1::function_a638807d("coop");
	function_7afde52("kills", "gems", "skulls", "chickens", "deaths");
	if(!isdefined(level.var_791fe6f8))
	{
		function_9b385ca5();
		level.var_791fe6f8 = var_33764ba5;
	}
	function_e6cab0ff(level.var_791fe6f8, 5);
}

/*
	Name: function_34685338
	Namespace: namespace_30ddac33
	Checksum: 0x4677315D
	Offset: 0x7B0
	Size: 0x207
	Parameters: 0
	Flags: None
*/
function function_34685338()
{
	level.var_1ebbb333 = 0;
	function_7c73e78e("auto_change");
	game["switchedsides"] = 0;
	level.var_6af14375 = (0, 0, 0);
	level.var_51c188a7 = (0, 0, 0);
	foreach(var_3e94206a in level.var_f9f79134)
	{
		namespace_82b91a51::function_b5deb01d(var_3e94206a, &"OBJECTIVES_COOP");
		namespace_82b91a51::function_a7a109e6(var_3e94206a, &"OBJECTIVES_COOP_HINT");
		namespace_82b91a51::function_f38b59c3(var_3e94206a, &"OBJECTIVES_COOP");
		namespace_4a43ba8::function_74317bd4(var_3e94206a, "cp_coop_spawn");
		namespace_4a43ba8::function_74317bd4(var_3e94206a, "cp_coop_respawn");
	}
	namespace_52deffe2::function_ca8dbdcd();
	level.var_d45a4a66 = namespace_d73b9283::function_b31651a2(level.var_6af14375, level.var_51c188a7);
	function_877b12b0(level.var_d45a4a66);
	var_3f6206f4 = namespace_4a43ba8::function_3812b585();
	function_9eb6e484(var_3f6206f4.var_722885f3, var_3f6206f4.var_6ab6f4fd);
	level.var_9b4da288 = 1;
}

/*
	Name: function_19bc9234
	Namespace: namespace_30ddac33
	Checksum: 0xF9E97F2D
	Offset: 0x9C0
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_19bc9234(var_b530240c, var_878f71b1)
{
	function_c22bfa61("COOP:onSpawnPlayer");
	function_7905cb51();
}

/*
	Name: function_257d1c47
	Namespace: namespace_30ddac33
	Checksum: 0x497B97D5
	Offset: 0xA08
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_257d1c47(var_bb0667ac)
{
	function_7d3cac7d(0);
}

/*
	Name: function_c2658b46
	Namespace: namespace_30ddac33
	Checksum: 0xA0EC98E8
	Offset: 0xA38
	Size: 0x4B
	Parameters: 9
	Flags: None
*/
function function_c2658b46(var_51e6a548, var_a0ad4f34, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_b2e5f7d2)
{
}

/*
	Name: function_fad7287a
	Namespace: namespace_30ddac33
	Checksum: 0x8DD79B36
	Offset: 0xA90
	Size: 0x7
	Parameters: 0
	Flags: None
*/
function function_fad7287a()
{
	return 1;
}

/*
	Name: function_16220a9c
	Namespace: namespace_30ddac33
	Checksum: 0xB4B721C
	Offset: 0xAA0
	Size: 0x7
	Parameters: 0
	Flags: None
*/
function function_16220a9c()
{
	return 1;
}

