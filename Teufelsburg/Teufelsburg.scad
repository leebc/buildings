h_mesa=260; //feet
h_ground=1;
h_1story=3.5;
h_1doors=h_1story*0.8;
echo ("h_1doors",h_1doors);
h_2story=h_1story*2;
h_3story=h_1story*3;
h_35story=h_1story*3.5;
h_375story=h_1story*3.75;
h_6story=h_1story*6;
h_7story=h_1story*7;


translate([133,200,0])
	rotate([0,0,65])
		cube([6,6,6]);
//color("red")
//	linear_extrude(height = 5, center = true, convexity = 10)
//		import(file = "plan-6b.dxf");
color("blue")
	linear_extrude(height = h_7story, center = false, convexity = 10)
		import(file = "plan-6--0.dxf");
color("orange")	
	linear_extrude(height = h_6story, center = false, convexity = 10)
		import(file = "plan-6--51.dxf");
	linear_extrude(height = h_375story, center = false, convexity = 10)
		import(file = "plan-6--77.dxf");
	linear_extrude(height = h_35story, center = false, convexity = 10)
		import(file = "plan-6--102.dxf");
	linear_extrude(height = h_3story, center = false, convexity = 10)
		import(file = "plan-6--128.dxf");
color("red")
	linear_extrude(height = h_2story, center = false, convexity = 10)
		import(file = "plan-6--153.dxf");
	linear_extrude(height = h_1doors, center = false, convexity = 10)
		import(file = "plan-6--179.dxf");
	linear_extrude(height = h_1story, center = false, convexity = 10)
		import(file = "plan-6--204.dxf");
	linear_extrude(height = h_1story, center = false, convexity = 10)
		import(file = "plan-6--230.dxf");
color("green")
translate([0,0,-h_mesa])
	linear_extrude(height = h_mesa, center = false, convexity = 10)
		import(file = "plan-6--mesa.dxf");	
color("black")
	linear_extrude(height = h_ground, center = false, convexity = 10)
		import(file = "plan-6--road.dxf");
		
//cube([5,5,5]);