#using scripts\codescripts\struct;
#using scripts\cp\voice\voice_newworld;
#using scripts\shared\music_shared;

#namespace namespace_b5a65bd6;

/*
	Name: main
	Namespace: namespace_b5a65bd6
	Checksum: 0x6405A8CA
	Offset: 0x230
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_398aada::init_voice();
	level thread function_9c5a4eb0();
	level thread function_9c09862a();
	level thread function_3c510972();
}

/*
	Name: function_9c5a4eb0
	Namespace: namespace_b5a65bd6
	Checksum: 0x68F5F2FB
	Offset: 0x298
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_9c5a4eb0()
{
	level waittill("hash_d195be99");
	wait(2);
	music::setmusicstate("brave");
}

/*
	Name: function_9c09862a
	Namespace: namespace_b5a65bd6
	Checksum: 0x57B98341
	Offset: 0x2D0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_9c09862a()
{
	level waittill("hash_ddeafd5d");
	music::setmusicstate("intro");
}

/*
	Name: function_3c510972
	Namespace: namespace_b5a65bd6
	Checksum: 0x2D910A52
	Offset: 0x308
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_3c510972()
{
	level waittill("hash_79929eec");
	wait(3);
	music::setmusicstate("hall_introduction");
}

#namespace namespace_e38c3c58;

/*
	Name: function_973b77f9
	Namespace: namespace_e38c3c58
	Checksum: 0xC2698042
	Offset: 0x340
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_973b77f9()
{
	music::setmusicstate("none");
}

/*
	Name: function_d942ea3b
	Namespace: namespace_e38c3c58
	Checksum: 0x605080BC
	Offset: 0x368
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_d942ea3b()
{
	music::setmusicstate("subway_tension_loop");
}

/*
	Name: function_71fee4f3
	Namespace: namespace_e38c3c58
	Checksum: 0x37D9319E
	Offset: 0x390
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_71fee4f3()
{
	music::setmusicstate("brave_hallway");
}

/*
	Name: function_68f4508b
	Namespace: namespace_e38c3c58
	Checksum: 0x3A012352
	Offset: 0x3B8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_68f4508b()
{
	music::setmusicstate("brave_big_room");
}

/*
	Name: function_d4def1a6
	Namespace: namespace_e38c3c58
	Checksum: 0xA5EABE04
	Offset: 0x3E0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_d4def1a6()
{
	music::setmusicstate("brave_post_hallway");
}

/*
	Name: function_964ce03c
	Namespace: namespace_e38c3c58
	Checksum: 0x43E1BF3D
	Offset: 0x408
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_964ce03c()
{
	music::setmusicstate("hack");
}

/*
	Name: function_fa2e45b8
	Namespace: namespace_e38c3c58
	Checksum: 0x328AD1D7
	Offset: 0x430
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fa2e45b8()
{
	music::setmusicstate("battle_1");
}

/*
	Name: function_606b7b8
	Namespace: namespace_e38c3c58
	Checksum: 0x501E4CBD
	Offset: 0x458
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_606b7b8()
{
	music::setmusicstate("chase");
}

/*
	Name: function_f4a6634b
	Namespace: namespace_e38c3c58
	Checksum: 0x1439F0B3
	Offset: 0x480
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_f4a6634b()
{
	music::setmusicstate("brain_suck");
}

/*
	Name: function_92eefdb3
	Namespace: namespace_e38c3c58
	Checksum: 0xFFD5DD15
	Offset: 0x4A8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_92eefdb3()
{
	music::setmusicstate("diaz_wall_training");
}

/*
	Name: function_d8182956
	Namespace: namespace_e38c3c58
	Checksum: 0x86487F7F
	Offset: 0x4D0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_d8182956()
{
	music::setmusicstate("diaz_drone_training");
}

/*
	Name: function_ccafa212
	Namespace: namespace_e38c3c58
	Checksum: 0x92D6D9E4
	Offset: 0x4F8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_ccafa212()
{
	music::setmusicstate("foundry_battle");
}

/*
	Name: function_bb8ce831
	Namespace: namespace_e38c3c58
	Checksum: 0x5D510DF7
	Offset: 0x520
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_bb8ce831()
{
	music::setmusicstate("tension_loop_1");
}

/*
	Name: function_57c68b7b
	Namespace: namespace_e38c3c58
	Checksum: 0xE1899E4C
	Offset: 0x548
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_57c68b7b()
{
	wait(3);
	music::setmusicstate("inside_man");
}

/*
	Name: function_a99be221
	Namespace: namespace_e38c3c58
	Checksum: 0x6A04FA2D
	Offset: 0x578
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_a99be221()
{
	music::setmusicstate("train_battle");
}

/*
	Name: function_922297e3
	Namespace: namespace_e38c3c58
	Checksum: 0xE6049706
	Offset: 0x5A0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_922297e3()
{
	music::setmusicstate("bomb_disarm");
}

/*
	Name: function_9c65cf9a
	Namespace: namespace_e38c3c58
	Checksum: 0x53B9A66C
	Offset: 0x5C8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_9c65cf9a()
{
	music::setmusicstate("wake_up");
}

/*
	Name: function_a693b757
	Namespace: namespace_e38c3c58
	Checksum: 0xBC73DD64
	Offset: 0x5F0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_a693b757()
{
	music::setmusicstate("interface");
}

/*
	Name: function_57a2519c
	Namespace: namespace_e38c3c58
	Checksum: 0xD3E76538
	Offset: 0x618
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_57a2519c()
{
	music::setmusicstate("none");
}

/*
	Name: function_5a7ad30
	Namespace: namespace_e38c3c58
	Checksum: 0x41ED8EBC
	Offset: 0x640
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_5a7ad30()
{
	if(!isdefined(level.var_485316b5))
	{
		level.var_485316b5 = spawn("script_origin", (-25886, 39179, 4219));
	}
	wait(5);
	level.var_485316b5 PlayLoopSound("vox_civ_train_walla");
	level waittill("PANIC");
	level.var_485316b5 StopLoopSound();
	level.var_485316b5 PlayLoopSound("vox_civ_panic_train");
	level waittill("hash_a0228009");
	level.var_485316b5 StopLoopSound();
}

/*
	Name: function_c132cd41
	Namespace: namespace_e38c3c58
	Checksum: 0xF05D03A5
	Offset: 0x728
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_c132cd41()
{
	if(!isdefined(level.var_de0151a7))
	{
		level.var_de0151a7 = spawn("script_origin", (-26271, 15583, 4212));
	}
	level.var_de0151a7 PlayLoopSound("amb_train_interior_ending");
	level waittill("hash_c053b2ca");
	level.var_de0151a7 StopLoopSound(1);
	wait(1);
	level.var_de0151a7 delete();
}

