#using scripts\codescripts\struct;
#using scripts\cp\voice\voice_biodomes2;
#using scripts\shared\clientfield_shared;
#using scripts\shared\music_shared;

#namespace namespace_e0a1d00c;

/*
	Name: main
	Namespace: namespace_e0a1d00c
	Checksum: 0x995BDE10
	Offset: 0x148
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_1ddef61c::init_voice();
	level thread namespace_76133733::function_f9551b60();
}

#namespace namespace_76133733;

/*
	Name: function_973b77f9
	Namespace: namespace_76133733
	Checksum: 0x318DC125
	Offset: 0x180
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_973b77f9()
{
	music::setmusicstate("none");
}

/*
	Name: function_fcea1d9
	Namespace: namespace_76133733
	Checksum: 0x36C6C88B
	Offset: 0x1A8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_fcea1d9(var_4f269041)
{
	wait(var_4f269041);
	music::setmusicstate("none");
}

/*
	Name: function_683d15e
	Namespace: namespace_76133733
	Checksum: 0x2618C52
	Offset: 0x1E0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_683d15e()
{
	music::setmusicstate("supertrees");
}

/*
	Name: function_ec357599
	Namespace: namespace_76133733
	Checksum: 0x5AB8A416
	Offset: 0x208
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_ec357599()
{
	music::setmusicstate("dome_slide");
}

/*
	Name: function_11139d81
	Namespace: namespace_76133733
	Checksum: 0xCB2B9DDA
	Offset: 0x230
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_11139d81()
{
	music::setmusicstate("boat_ride");
}

/*
	Name: function_a6bf2d53
	Namespace: namespace_76133733
	Checksum: 0xF04B658F
	Offset: 0x258
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_a6bf2d53()
{
	music::setmusicstate("slide_slam");
}

/*
	Name: function_f9551b60
	Namespace: namespace_76133733
	Checksum: 0x243BF246
	Offset: 0x280
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_f9551b60()
{
	level waittill("hash_8fd3985");
	level clientfield::set("sndIGCsnapshot", 4);
}

