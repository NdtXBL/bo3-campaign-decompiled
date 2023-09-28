#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\music_shared;
#using scripts\shared\util_shared;

#namespace namespace_9750c824;

/*
	Name: main
	Namespace: namespace_9750c824
	Checksum: 0xDA387FFB
	Offset: 0x1A8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function main()
{
	level thread function_cf637cc();
	level thread function_ba59ec78();
}

/*
	Name: function_cf637cc
	Namespace: namespace_9750c824
	Checksum: 0xB7D369A6
	Offset: 0x1E8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_cf637cc()
{
	level waittill("hash_72d53556");
	level util::clientNotify("start_battle_sound");
}

/*
	Name: function_ba59ec78
	Namespace: namespace_9750c824
	Checksum: 0x8E9C534D
	Offset: 0x220
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_ba59ec78()
{
	level waittill("hash_fe7439eb");
	level util::clientNotify("kill_security_chatter");
}

#namespace namespace_66fe78fb;

/*
	Name: function_2c69b4a0
	Namespace: namespace_66fe78fb
	Checksum: 0xFE18E9DA
	Offset: 0x258
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_2c69b4a0()
{
	music::setmusicstate("intro");
}

/*
	Name: function_36e942f6
	Namespace: namespace_66fe78fb
	Checksum: 0xF8FE265F
	Offset: 0x280
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_36e942f6()
{
	music::setmusicstate("battle_one_part_one");
}

/*
	Name: function_f3bdd599
	Namespace: namespace_66fe78fb
	Checksum: 0xE46D4E76
	Offset: 0x2A8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_f3bdd599()
{
	music::setmusicstate("elevator_ride");
}

/*
	Name: function_d116b1d8
	Namespace: namespace_66fe78fb
	Checksum: 0x9ED52C2E
	Offset: 0x2D0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_d116b1d8()
{
	wait(10);
	music::setmusicstate("battle_one_part_two");
}

/*
	Name: function_f2d3d939
	Namespace: namespace_66fe78fb
	Checksum: 0xB84DED26
	Offset: 0x300
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_f2d3d939()
{
	music::setmusicstate("air_duct");
	wait(15);
	util::clientNotify("sndRampair");
	wait(25);
	util::clientNotify("sndRampEnd");
}

/*
	Name: function_86781870
	Namespace: namespace_66fe78fb
	Checksum: 0xC7777FAC
	Offset: 0x368
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_86781870()
{
	wait(0.5);
	music::setmusicstate("hq_battle");
}

/*
	Name: function_8836c025
	Namespace: namespace_66fe78fb
	Checksum: 0xC0A258B7
	Offset: 0x398
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_8836c025()
{
	music::setmusicstate("computer_hack");
}

/*
	Name: function_fd00a4f2
	Namespace: namespace_66fe78fb
	Checksum: 0x8953981B
	Offset: 0x3C0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fd00a4f2()
{
	music::setmusicstate("breach_stinger");
}

/*
	Name: function_51e72857
	Namespace: namespace_66fe78fb
	Checksum: 0xEC2C60BD
	Offset: 0x3E8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_51e72857()
{
	music::setmusicstate("battle_two");
}

/*
	Name: function_973b77f9
	Namespace: namespace_66fe78fb
	Checksum: 0xE4523986
	Offset: 0x410
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_973b77f9()
{
	music::setmusicstate("none");
}

