surface(file ="plan-2.png", center = true, convexity = 10);

surface(file="surface.dat",invert=false);

color("red")
	linear_extrude(height = 5, center = true, convexity = 10)
		import(file="plan-5.dxf", convexity=3);

cube([5,5,5]);