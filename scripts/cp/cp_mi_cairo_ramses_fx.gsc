#using scripts\codescripts\struct;
#using scripts\shared\clientfield_shared;

#namespace namespace_b9254c21;

/*
	Name: main
	Namespace: namespace_b9254c21
	Checksum: 0x421C3635
	Offset: 0x118
	Size: 0x7D
	Parameters: 0
	Flags: None
*/
function main()
{
	clientfield::register("world", "defend_fog_banks", 1, 1, "int");
	clientfield::register("world", "start_fog_banks", 1, 1, "int");
	level._effect["vtol_thruster"] = "vehicle/fx_vtol_thruster_vista";
}

