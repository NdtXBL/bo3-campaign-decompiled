#using scripts\codescripts\struct;
#using scripts\cp\_hacking;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\shared\flag_shared;

#namespace namespace_cb380b88;

/*
	Name: main
	Namespace: namespace_cb380b88
	Checksum: 0x30C5E008
	Offset: 0x210
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function main()
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
function function_8f05da8(a, b)
{
	var_56fa193b = GetEnt("tank_obj_target", "targetname");
	level.tank_targ = spawnstruct();
	level.tank_targ.origin = var_56fa193b.origin;
	objectives::set("obj_attack_tanks", level.tank_targ);
	iprintln("waiting placeholder for attack tanks");
	wait(5);
	objectives::complete("obj_attack_tanks", level.tank_targ);
	skipto::function_be8adfb8(a);
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
function function_1316b781(a, b)
{
	var_142bbbff = GetEnt("exterior_hack_trig_1", "targetname");
	level.var_d997ef9c = struct::get(var_142bbbff.target, "targetname");
	objectives::set("cp_mi_cairo_aquifer_hack_obj1", level.var_d997ef9c);
	var_142bbbff hacking::function_68df65d8(1);
	var_142bbbff hacking::trigger_wait();
	objectives::complete("cp_mi_cairo_aquifer_hack_obj1", level.var_d997ef9c);
	skipto::function_be8adfb8(a);
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
function function_391931ea(a, b)
{
	var_a2244cc4 = GetEnt("exterior_hack_trig_2", "targetname");
	level.var_4b9f5ed7 = struct::get(var_a2244cc4.target, "targetname");
	objectives::set("cp_mi_cairo_aquifer_hack_obj2", level.var_4b9f5ed7);
	var_a2244cc4 hacking::function_68df65d8(1);
	var_a2244cc4 hacking::trigger_wait();
	objectives::complete("cp_mi_cairo_aquifer_hack_obj2", level.var_4b9f5ed7);
	skipto::function_be8adfb8(a);
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
function function_5f1bac53(a, b)
{
	var_c826c72d = GetEnt("exterior_hack_trig_3", "targetname");
	level.var_259ce46e = spawnstruct();
	level.var_259ce46e.origin = var_c826c72d.origin;
	objectives::set("cp_mi_cairo_aquifer_hack_obj3", level.var_259ce46e);
	var_c826c72d hacking::function_68df65d8(5);
	var_c826c72d hacking::trigger_wait();
	objectives::complete("cp_mi_cairo_aquifer_hack_obj3", level.var_259ce46e);
	skipto::function_be8adfb8(a);
}

/*
	Name: done
	Namespace: namespace_cb380b88
	Checksum: 0xA23E278A
	Offset: 0x650
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function done(a, b, c, d)
{
	iprintln("######## " + a + " is completed ########");
}

