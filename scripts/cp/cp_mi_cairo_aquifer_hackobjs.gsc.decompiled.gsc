#using scripts\codescripts\struct;
#using scripts\cp\_hacking;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\shared\flag_shared;

#namespace namespace_cb380b88;

/*
	Name: function_d290ebfa
	Namespace: namespace_cb380b88
	Checksum: 0x30C5E008
	Offset: 0x210
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_a9192543();
}

/*
	Name: function_a9192543
	Namespace: namespace_cb380b88
	Checksum: 0x99EC1590
	Offset: 0x230
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_a9192543()
{
}

/*
	Name: function_8f05da8
	Namespace: namespace_cb380b88
	Checksum: 0x1CE65449
	Offset: 0x240
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_8f05da8(var_f96bc9fe, var_d3694f95)
{
	var_56fa193b = function_6ada35ba("tank_obj_target", "targetname");
	level.var_72dad04 = function_a8fb77bd();
	level.var_72dad04.var_722885f3 = var_56fa193b.var_722885f3;
	namespace_d0ef8521::function_74d6b22f("obj_attack_tanks", level.var_72dad04);
	function_d52b076d("waiting placeholder for attack tanks");
	wait(5);
	namespace_d0ef8521::function_31cd1834("obj_attack_tanks", level.var_72dad04);
	namespace_1d795d47::function_be8adfb8(var_f96bc9fe);
}

/*
	Name: function_1316b781
	Namespace: namespace_cb380b88
	Checksum: 0x4A49A2DB
	Offset: 0x340
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_1316b781(var_f96bc9fe, var_d3694f95)
{
	var_142bbbff = function_6ada35ba("exterior_hack_trig_1", "targetname");
	level.var_d997ef9c = namespace_14b42b8a::function_7922262b(var_142bbbff.var_b07228b6, "targetname");
	namespace_d0ef8521::function_74d6b22f("cp_mi_cairo_aquifer_hack_obj1", level.var_d997ef9c);
	var_142bbbff namespace_ac959fba::function_68df65d8(1);
	var_142bbbff namespace_ac959fba::function_7373f13d();
	namespace_d0ef8521::function_31cd1834("cp_mi_cairo_aquifer_hack_obj1", level.var_d997ef9c);
	namespace_1d795d47::function_be8adfb8(var_f96bc9fe);
}

/*
	Name: function_391931ea
	Namespace: namespace_cb380b88
	Checksum: 0x8CE95AD1
	Offset: 0x440
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_391931ea(var_f96bc9fe, var_d3694f95)
{
	var_a2244cc4 = function_6ada35ba("exterior_hack_trig_2", "targetname");
	level.var_4b9f5ed7 = namespace_14b42b8a::function_7922262b(var_a2244cc4.var_b07228b6, "targetname");
	namespace_d0ef8521::function_74d6b22f("cp_mi_cairo_aquifer_hack_obj2", level.var_4b9f5ed7);
	var_a2244cc4 namespace_ac959fba::function_68df65d8(1);
	var_a2244cc4 namespace_ac959fba::function_7373f13d();
	namespace_d0ef8521::function_31cd1834("cp_mi_cairo_aquifer_hack_obj2", level.var_4b9f5ed7);
	namespace_1d795d47::function_be8adfb8(var_f96bc9fe);
}

/*
	Name: function_5f1bac53
	Namespace: namespace_cb380b88
	Checksum: 0xADC1679A
	Offset: 0x540
	Size: 0x103
	Parameters: 2
	Flags: None
*/
function function_5f1bac53(var_f96bc9fe, var_d3694f95)
{
	var_c826c72d = function_6ada35ba("exterior_hack_trig_3", "targetname");
	level.var_259ce46e = function_a8fb77bd();
	level.var_259ce46e.var_722885f3 = var_c826c72d.var_722885f3;
	namespace_d0ef8521::function_74d6b22f("cp_mi_cairo_aquifer_hack_obj3", level.var_259ce46e);
	var_c826c72d namespace_ac959fba::function_68df65d8(5);
	var_c826c72d namespace_ac959fba::function_7373f13d();
	namespace_d0ef8521::function_31cd1834("cp_mi_cairo_aquifer_hack_obj3", level.var_259ce46e);
	namespace_1d795d47::function_be8adfb8(var_f96bc9fe);
}

/*
	Name: function_355070e1
	Namespace: namespace_cb380b88
	Checksum: 0xA23E278A
	Offset: 0x650
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_355070e1(var_f96bc9fe, var_d3694f95, var_ad66d52c, var_87645ac3)
{
	function_d52b076d("######## " + var_f96bc9fe + " is completed ########");
}

