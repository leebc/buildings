//surface(file ="plan-2.png", center = true, convexity = 10);

//surface(file="surface.dat",center=true);

//surface(file="test_surface.dat",center=true);

//surface(surface(file="plan-3.png",center=true);file="plan-3.png",center=true);

//surface(file="plan-4.raw",center=true);

//color("red")
//	linear_extrude(height = 5, center = true, convexity = 10)
//		import(file = "plan-6b.dxf");
color("blue")	
	linear_extrude(height = 255, center = true, convexity = 10)
		import(file = "plan-6--0.dxf");
color("orange")	
	linear_extrude(height = 255-51, center = true, convexity = 10)
		import(file = "plan-6--51.dxf");
	linear_extrude(height = 255-77, center = true, convexity = 10)
		import(file = "plan-6--77.dxf");
	linear_extrude(height = 255-102, center = true, convexity = 10)
		import(file = "plan-6--102.dxf");
	linear_extrude(height = 255-128, center = true, convexity = 10)
		import(file = "plan-6--128.dxf");
color("")
	linear_extrude(height = 255-153, center = true, convexity = 10)
		import(file = "plan-6--153.dxf");
	linear_extrude(height = 255-179, center = true, convexity = 10)
		import(file = "plan-6--179.dxf");
	linear_extrude(height = 255-204, center = true, convexity = 10)
		import(file = "plan-6--204.dxf");
	linear_extrude(height = 255-230, center = true, convexity = 10)
		import(file = "plan-6--230.dxf");
color("green")
	translate([0,0,-255/2])
	linear_extrude(height = 255, center = true, convexity = 10)
		import(file = "plan-6--mesa.dxf");	
color("black")
	linear_extrude(height = 1, center = true, convexity = 10)
		import(file = "plan-6--road.dxf");
		
//cube([5,5,5]);