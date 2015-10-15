sphere_radius=30;
tower_height=60;
pylon_offset=-(tower_height)/2;

difference(){
	

	union(){
		scale([1,1,0.5])
			sphere(r=sphere_radius,$fn=60);

		difference(){
			color("green")
					cylinder (r=sphere_radius+3,h=5,center=true);

			color("red")
				translate([0,0,2.5])
					cylinder (r=sphere_radius+2,h=5,center=true);
		}
				
		color("green")
			translate([0,0,pylon_offset])
				cylinder (r=5,h=tower_height,center=true);

		for (z = [0,60,120,180,240,300,360])
			rotate ([0,0,z])
				color("red")
					translate([sphere_radius/1-1,0,pylon_offset])
			 			cylinder (r=2,h=tower_height,center=true,$fn=15);

		color("blue")	//top
			translate([0,0,sphere_radius/-2-8])
				cylinder(h = 10, r1 = 5, r2 = 10, center = false);

		color("blue")  	//bottom
			translate([0,0,2*pylon_offset])
				cylinder(h = 10, r1 = 10, r2 = 5, center = false);

		color("green")
			translate([0,0,2*pylon_offset])
				cube([2*sphere_radius+5,2*sphere_radius+5,1],center=true);

		color("blue")	//crossover
			translate([sphere_radius/2,0,-sphere_radius])
				cube([sphere_radius,2,2],center=true);

		color("white")	//Contro buiding
			translate([0,sphere_radius/2-2,-tower_height+5])
				cube([10,10,10],center=true);
		
		color("green")
			translate([0,0,sphere_radius/2])
				cylinder (r=1,h=5,center=true,$fn=60);
		color("red")
			translate([0,0,sphere_radius/2+2.5])
				sphere(r=1,$fn=60);

	}

	union(){
		//cube(100,100,100);//Subtract to show insode of tower

		scale([1,1,0.5])
			color("blue") sphere(r=sphere_radius-4);
		color("green")
			translate([0,0,pylon_offset])
				cylinder (r=3,h=tower_height+5,center=true);
	}
}