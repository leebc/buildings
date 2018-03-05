h_mesa=25; //feet
h_ground=0.25;
h_1story=3.5;
h_1doors=h_1story*0.8;
echo ("h_1doors",h_1doors);
h_2story=h_1story*2;
h_3story=h_1story*3;
h_35story=h_1story*3.5;
h_375story=h_1story*3.75;
h_5story=h_1story*5;
h_6story=h_1story*6;
h_7story=h_1story*7;

difference()
    union()
    {
        //translate([133,200,0])
        //  rotate([0,0,65])
        //        cube([6,6,6]);
        //color("red")
        //	linear_extrude(height = 5, center = true, convexity = 10)
        //		import(file = "plan-6b.dxf");
        color("blue")
            linear_extrude(height = h_7story, center = false, convexity = 10)
                import(file = "plan-6--0.dxf");
        color("orange")	
            difference(){
                linear_extrude(height = h_6story, center = false, convexity = 10)
                    import(file = "plan-6--51.dxf");
                translate([199,120.35,0]) rotate([0,0,-1])
                    cube([6,13,h_6story/2]);
            }
            
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
        difference()
        {
            translate([0,0,-h_mesa])
                linear_extrude(height = h_mesa, center = false, convexity = 10)
                    import(file = "plan-6--mesa.dxf");	
            translate([67,211,-30])
                rotate([55,0,50])
                    cube([50,30,50]);
        }
        
        color("black")
            linear_extrude(height = h_ground, center = false, convexity = 10)
                import(file = "plan-6--road.dxf");
        
        color("red")    // newer Red brick out tower
            translate([60,125,0])
                cylinder(r=5,h=h_35story, $fn=60);
        
        color("white")  // White towers and domes
            union()
            {
                    translate([60,125,h_35story+4]){  // Red brick out tower
                        sphere(r=6, $fn=100); 
                        translate([0,0,5.5])  // pip on top
                            cylinder(r=0.5,h=1, $fn=20);
                        translate([0,0,-6]){ // catwalk
                            cylinder(r=6, h=0.25);
                            difference(){
                                cylinder(r=6.5, h=2);
                                cylinder(r=6.25, h=6);
                            }
                        }
                    }
                    translate([81,141.75,h_7story+4.5]) // "West" tower
                    {
                        sphere(r=10.5);
                        translate([0,0,-5])
                            cylinder(r=11.5,h=0.5);
                        translate([0,0,13])
                            sphere(r=4, $fn=20);
                    }
                    tallest_tower_height=35;
                    translate([188.75,226,h_7story]) // "North" towers
                    {
                        cylinder(r=10,h=tallest_tower_height);
                        for (i=[0:1:5])
                            translate ([0,0,i*tallest_tower_height/5])
                                cylinder(r=10.25,h=0.5);
                        translate([0,0,tallest_tower_height+11/2]){
                            sphere(r=11, $fn=30);
                            translate([0,0,11+3])
                                sphere(r=4, $fn=20);
                        }
                        rotate([0,0,14.5]){
                            //cube([70,10,0.5], center=true);
                            translate([-25,-14,0])
                                cube([50,4.5,5]);
                            translate([25,-8,8])
                                sphere(r=11, $fn=30);
                            translate([-25,-8,8])
                                sphere(r=11, $fn=30);
                        }
                    }
                    translate([225,165,h_6story+5])  // Disk on center roof
                        difference(){
                            cylinder(r=11, h=0.5);
                            cylinder(r=10, h=1);
                        }
                    translate([232,145,h_6story])  // Center roof Hatch
                        cube([2,4,0.5]);
                    translate([201,116,h_6story])  // T-roof Hatch
                        cube([2,4,0.5]);
            }
            
         color("white"){  // roof derricks
            translate([201,100,h_35story])  
                derrick();
            translate([180,100,h_35story])  
                derrick();
            translate([220,100,h_35story])  
                derrick();
            translate([180,80,h_35story])  
                rotate([0,0,90])
                derrick();
        }
        //cube([5,5,5]);
    }
    
    module derrick() {
        translate([0.5,0,0])
            cylinder(r=0.25, h=3, $fn=15);
        translate([-0.5,0,0])
            cylinder(r=0.25, h=3, $fn=15);
        translate([0,2.5,3.5])
            rotate([100,0,0]){
                cylinder(r=0.3, h=7, $fn=15); // The big beam
                translate([0,0,6.4])
                    cylinder(r=0.35,h=0.5, $fn=15); //Sensor thing
                cube([0.7,0.7,0.1], center=true); // weight
            }
        translate([-0.5,0,3.1])
            rotate([0,90,0])
                    cylinder(r=0.1, h=1, $fn=15);
        translate([-0.2,-3,-0.1])
            rotate([20,0,0])
                cube([0.25,0.25,2.2]);
        translate([0,-4.5,0])
            rotate([-20,0,0])
                cube([0.25,0.25,2.2]);
        translate([0,-3.6,1.75])
            difference(){
                cube([0.5,0.5,0.7], center=true);
                cube([0.25,0.6,0.8], center=true);
            }
        }
    