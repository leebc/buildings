sphere_radius=30;
boundry_wall_radius=sphere_radius+2;

cube_side=100;

scale_by=1.25;

//40x40x57


scale([scale_by,scale_by,scale_by]){
difference(){
	
	union(){

		difference(){
			translate([0,0,15])
				sphere(r=sphere_radius,$fn=25);

			translate([cube_side/-2,cube_side/-2,sphere_radius*5/6+15])
				color("red")		// above the roof
					cube([cube_side,cube_side,cube_side]);
		}

		difference(){
			rotate([90,90,20])
				translate([-15,0,0])
					color("white")
						cylinder(r=boundry_wall_radius,h=2,center=true);
			rotate([90,90,20])
				translate([-15,0,0])
					color("white")
						cylinder(r=boundry_wall_radius-2,h=4,center=true);
		}

		difference(){
			rotate([90,90,90])
				translate([-15,0,0])
					color("purple")
						cylinder(r=boundry_wall_radius,h=2,center=true);
			rotate([90,90,90])
				translate([-15,0,0])
					color("purple")
						cylinder(r=boundry_wall_radius-2,h=4,center=true);
		}
	}

	union(){		
		rotate([0,0,20])
			translate([0,cube_side/-2,0])
				color("blue")
					cube([cube_side,cube_side,cube_side],center=true);

		rotate([0,0,0])
			translate([cube_side/-2,0,0])
				color("blue")
					cube([cube_side,cube_side,cube_side],center=true);

		translate([cube_side/-2,cube_side/-2,-cube_side])
			color("red")		// Below the ground
				cube([cube_side,cube_side,cube_side]);


	}
}

}

		color("green")
			rotate([0,0,45+10])
			translate([18,0,0])
				cube([50,50,1],center=true);

	//The corner wall
		color("yellow")
			rotate([0,0,45+10])
				translate([0,-3.5,0])
					cube([5,7,sphere_radius+28]);

	// Door
		color("blue")
			rotate([0,0,45+10])
				translate([-1,-2.5,0])
					cube([2,5,7]);


// 40 foot marker
			color("red")
			rotate([0,0,0])
				translate([-6,0,0])
		;//			cube([5,40,sphere_radius+16.5]);
	
					
	//Wall stripes
		color("white")
			rotate([90,90,20]){
				translate([-2,1,-.9])
						cube([2,33,1]);
				translate([-12,1,-.9])
						cube([2,36,1]);
				translate([-22,1,-.9])
						cube([2,37,1]);
				translate([-32,1,-.9])
						cube([2,35,1]);
				translate([-42,1,-.9])
						cube([2,30,1]);
				translate([-52,1,-.9])
						cube([2,20,1]);
			}

		color("white")
			rotate([90,90,90]){
				translate([-2,1,-.1])
						cube([2,33,1]);
				translate([-12,1,-.1])
						cube([2,36,1]);
				translate([-22,1,-.1])
						cube([2,37,1]);
				translate([-32,1,-.1])
						cube([2,35,1]);
				translate([-42,1,-.1])
						cube([2,30,1]);
				translate([-52,1,-.1])
						cube([2,20,1]);
			}






