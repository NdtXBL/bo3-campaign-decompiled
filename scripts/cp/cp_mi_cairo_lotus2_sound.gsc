#using scripts\codescripts\struct;
#using scripts\shared\music_shared;

#namespace namespace_6cf6620e;

/*
	Name: main
	Namespace: namespace_6cf6620e
	Checksum: 0x8E4A9625
	Offset: 0x178
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function main()
{
	level thread namespace_a92ad484::function_82e83534();
	level thread namespace_a92ad484::function_cd6d8f17();
}

#namespace namespace_a92ad484;

/*
	Name: function_8836c025
	Namespace: namespace_a92ad484
	Checksum: 0xA79B1CD5
	Offset: 0x1B8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_8836c025()
{
	music::setmusicstate("lotus2_intro");
}

/*
	Name: function_fd00a4f2
	Namespace: namespace_a92ad484
	Checksum: 0x8EED09F
	Offset: 0x1E0
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
	Namespace: namespace_a92ad484
	Checksum: 0xBD79712A
	Offset: 0x208
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_51e72857()
{
	music::setmusicstate("battle_two");
}

/*
	Name: function_614dc783
	Namespace: namespace_a92ad484
	Checksum: 0x464106C0
	Offset: 0x230
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_614dc783()
{
	music::setmusicstate("elevator_tension");
}

/*
	Name: function_8ca46216
	Namespace: namespace_a92ad484
	Checksum: 0xEE9FA35A
	Offset: 0x258
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_8ca46216()
{
	music::setmusicstate("post_elevator_battle");
}

/*
	Name: function_a3388bcf
	Namespace: namespace_a92ad484
	Checksum: 0x27C8C2C7
	Offset: 0x280
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_a3388bcf()
{
	music::setmusicstate("pre_igc");
}

/*
	Name: function_c954e9a2
	Namespace: namespace_a92ad484
	Checksum: 0xBA6574C9
	Offset: 0x2A8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_c954e9a2()
{
	music::setmusicstate("post_igc_drama");
}

/*
	Name: function_208b0a38
	Namespace: namespace_a92ad484
	Checksum: 0x5F39E9F7
	Offset: 0x2D0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_208b0a38()
{
	music::setmusicstate("robot_hole_stinger");
}

/*
	Name: function_1d1fd3af
	Namespace: namespace_a92ad484
	Checksum: 0x16686698
	Offset: 0x2F8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_1d1fd3af()
{
	music::setmusicstate("epic_reveal_stinger");
}

/*
	Name: function_12202095
	Namespace: namespace_a92ad484
	Checksum: 0xAC64F956
	Offset: 0x320
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_12202095()
{
	music::setmusicstate("battle_three");
}

/*
	Name: function_beaa78ac
	Namespace: namespace_a92ad484
	Checksum: 0xAA030AC7
	Offset: 0x348
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_beaa78ac()
{
	music::setmusicstate("post_vtol_crash");
}

/*
	Name: function_973b77f9
	Namespace: namespace_a92ad484
	Checksum: 0x56B4A834
	Offset: 0x370
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_973b77f9()
{
	music::setmusicstate("none");
}

/*
	Name: function_cd6d8f17
	Namespace: namespace_a92ad484
	Checksum: 0x188FF7BD
	Offset: 0x398
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_cd6d8f17()
{
	level waittill("hash_d77cf6d0");
	music::setmusicstate("none");
}

/*
	Name: function_82e83534
	Namespace: namespace_a92ad484
	Checksum: 0xA80AA6DD
	Offset: 0x3D0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_82e83534()
{
	level waittill("hash_23be1ef");
	music::setmusicstate("frozen_forest");
}

