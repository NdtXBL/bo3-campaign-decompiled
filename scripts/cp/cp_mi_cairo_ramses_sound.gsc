#using scripts\codescripts\struct;
#using scripts\cp\voice\voice_ramses;
#using scripts\cp\voice\voice_ramses1;
#using scripts\shared\music_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_39972b4;

/*
	Name: main
	Namespace: namespace_39972b4
	Checksum: 0x97C896DE
	Offset: 0x1B0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_aa1e4213::init_voice();
	namespace_db167d30::init_voice();
	level thread function_785c9e9c();
	level thread function_1af9b46e();
	level thread function_b23a802b();
	level thread function_aa79274f();
}

/*
	Name: function_785c9e9c
	Namespace: namespace_39972b4
	Checksum: 0xF66DE9CE
	Offset: 0x240
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_785c9e9c()
{
	level waittill("hash_18eb2769");
	music::setmusicstate("menendez_stinger");
}

/*
	Name: function_1af9b46e
	Namespace: namespace_39972b4
	Checksum: 0x19B40246
	Offset: 0x278
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_1af9b46e()
{
	level waittill("hash_ca1862bd");
	level thread namespace_e4c0c552::function_973b77f9();
}

/*
	Name: function_aa79274f
	Namespace: namespace_39972b4
	Checksum: 0x2E1583CE
	Offset: 0x2A8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_aa79274f()
{
	level waittill("hash_89bfff84");
	music::setmusicstate("raps_intro");
}

/*
	Name: function_abcd4714
	Namespace: namespace_39972b4
	Checksum: 0xF4AD8A04
	Offset: 0x2E0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_abcd4714()
{
	level waittill("hash_8626937b");
	music::setmusicstate("none");
}

/*
	Name: function_b23a802b
	Namespace: namespace_39972b4
	Checksum: 0xC2A49871
	Offset: 0x318
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_b23a802b()
{
	level waittill("hash_47329bcb");
	music::setmusicstate("post_interrogation");
}

#namespace namespace_e4c0c552;

/*
	Name: function_4f8bda39
	Namespace: namespace_e4c0c552
	Checksum: 0x61205C66
	Offset: 0x350
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_4f8bda39()
{
	music::setmusicstate("intro");
}

/*
	Name: function_53de5c02
	Namespace: namespace_e4c0c552
	Checksum: 0xBD230536
	Offset: 0x378
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_53de5c02()
{
	music::setmusicstate("interrogation");
}

/*
	Name: function_f444bf8e
	Namespace: namespace_e4c0c552
	Checksum: 0xAC9CA406
	Offset: 0x3A0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_f444bf8e()
{
	wait(5);
	music::setmusicstate("station_defend");
}

/*
	Name: function_9bda9447
	Namespace: namespace_e4c0c552
	Checksum: 0x402A7CC3
	Offset: 0x3D0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_9bda9447()
{
	music::setmusicstate("station_defend_outro");
}

/*
	Name: function_973b77f9
	Namespace: namespace_e4c0c552
	Checksum: 0x58A62085
	Offset: 0x3F8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_973b77f9()
{
	music::setmusicstate("none");
}

