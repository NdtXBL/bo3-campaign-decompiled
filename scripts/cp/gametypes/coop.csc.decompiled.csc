#using scripts\codescripts\struct;
#using scripts\shared\clientfield_shared;

#namespace namespace_c03736ba;

/*
	Name: function_c35e6aab
	Namespace: namespace_c03736ba
	Checksum: 0xA4072122
	Offset: 0xF0
	Size: 0x83
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_c35e6aab()
{
	function_bc1fcea1("playercorpse", "hide_body", 1, 1, "int", &function_d630ecfc, 0);
	function_bc1fcea1("toplayer", "killcam_menu", 1, 1, "int", &function_9f1677e1, 0);
}

/*
	Name: function_d290ebfa
	Namespace: namespace_c03736ba
	Checksum: 0x99EC1590
	Offset: 0x180
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
}

/*
	Name: function_90f0668f
	Namespace: namespace_c03736ba
	Checksum: 0x99EC1590
	Offset: 0x190
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_90f0668f()
{
}

/*
	Name: function_34685338
	Namespace: namespace_c03736ba
	Checksum: 0x99EC1590
	Offset: 0x1A0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_34685338()
{
}

/*
	Name: function_9f1677e1
	Namespace: namespace_c03736ba
	Checksum: 0x175A42BE
	Offset: 0x1B0
	Size: 0xD3
	Parameters: 7
	Flags: None
*/
function function_9f1677e1(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(function_30ee26f7(var_ec74b091))
	{
		return;
	}
	if(!isdefined(self.var_20f03684))
	{
		self.var_20f03684 = function_5307ab20(var_ec74b091, "CPKillcam");
	}
	if(var_9193c732)
	{
		function_2f6b6a4c(var_ec74b091, self.var_20f03684);
	}
	else
	{
		function_2b74b70a(var_ec74b091, self.var_20f03684);
	}
}

/*
	Name: function_d630ecfc
	Namespace: namespace_c03736ba
	Checksum: 0xD464B116
	Offset: 0x290
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_d630ecfc(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 && !function_30ee26f7(var_ec74b091))
	{
		self function_50ccee8d();
	}
	else
	{
		self function_48f26766();
	}
}

