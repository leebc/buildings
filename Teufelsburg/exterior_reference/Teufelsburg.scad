//surface(file ="plan-2.png", center = true, convexity = 10);

//surface(file="surface.dat",center=true);

//surface(file="test_surface.dat",center=true);

//surface(surface(file="plan-3.png",center=true);file="plan-3.png",center=true);

//surface(file="plan-4.raw",center=true);

//color("red")
	linear_extrude(height = 5, center = true, convexity = 10)
		import(file = "plan-5.dxf");

cube([5,5,5]);