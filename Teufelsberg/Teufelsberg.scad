h_mesa=25; //feet
h_ground=0.25;
h_bases=1   ;
h_1story=3.5;
h_1doors=h_1story*0.9;
echo ("h_1doors",h_1doors);
h_2story=h_1story*2;
h_3story=h_1story*3;
h_35story=h_1story*3.5;
h_375story=h_1story*3.75;
h_4story=h_1story*4;
h_5story=h_1story*5;
h_6story=h_1story*6;
h_7story=h_1story*7;
tallest_tower_height=h_5story * 2;

difference()
    union()
    {
        //color("blue") // Road size test
        //translate([133,200,h_7story])
        //    rotate([0,0,65])
        //        cube([6,6,h_5story*2]);
        //color("red")
        //	linear_extrude(height = 5, center = true, convexity = 10)
        //		import(file = "plan-6b.dxf");
 
// Model 10 -- mesa
        /*color("green")  // The mesa
        difference()
        {
            translate([0,0,-h_mesa])
                linear_extrude(height = h_mesa, center = false, convexity = 10)
                    import(file = "plan-6--mesa.dxf");	
            translate([67,211,-30])
                rotate([55,0,50])
                    cube([50,30,50]);
        }*/

// Model 20 -- road
        /*color("black")  // The road
            linear_extrude(height = h_ground, center = false, convexity = 10)
                import(file = "plan-6--road.dxf");
        */

// Model 30 -- bases
        /*color("red")    // Bases for powerlines, HUGE antenna
            linear_extrude(height = h_bases, center = false, convexity = 10)
                import(file = "plan-6--bases.dxf");
       */
        
// Model 40 -- tallest
        /*color("blue")   // Front tall building with towers
            linear_extrude(height = h_7story, center = false, convexity = 10)
                import(file = "plan-6--0.dxf");
        */

// Model 50 -- central
        /*color("orange")	    // Central building
            difference(){
                linear_extrude(height = h_6story, center = false, convexity = 10)
                    import(file = "plan-6--51.dxf");
                translate([199,120.35,0]) rotate([0,0,-1])
                    cube([6,13,h_6story/2]);
            } */
            
// Model 60 -- additions 1
       // Other edge buildings (newer)     
            /*linear_extrude(height = h_375story, center = false, convexity = 10)
                import(file = "plan-6--77.dxf");
            */
            
// Model 70 -- south
       // Central South building
            /*linear_extrude(height = h_35story, center = false, convexity = 10)
                import(file = "plan-6--102.dxf");
            */
            
// Model 80 -- southeast
       // South East most building
            /*linear_extrude(height = h_3story, center = false, convexity = 10)
                import(file = "plan-6--128.dxf");
            */
            
// Model 85 -- tallest_ante
       // Small Ante building near tallest building
            /*linear_extrude(height = h_3story, center = false, convexity = 10)
                import(file = "plan-6--130.dxf");
            */
            
// Model 90 -- corridors
        /*color("red")
            linear_extrude(height = h_2story, center = false, convexity = 10)
                import(file = "plan-6--153.dxf");
            */
            
// Model 92 -- Entrance
         /*color("red")
            linear_extrude(height = h_2story, center = false, convexity = 10)
                import(file = "plan-6--155.dxf");
                */
                
// Model 94 -- entoffices
        /*color("red")
            linear_extrude(height = h_2story, center = false, convexity = 10)
                import(file = "plan-6--157.dxf");
                */

//Model 96 -- british
        /*color("red")
            linear_extrude(height = h_2story, center = false, convexity = 10)
                import(file = "plan-6--159.dxf");
               */
                
// Model 98 -- east1
        /*color("red")
            linear_extrude(height = h_2story, center = false, convexity = 10)
                import(file = "plan-6--161.dxf");
                */
// Model 99 -- east2
        /*color("red")
            linear_extrude(height = h_2story, center = false, convexity = 10)
                import(file = "plan-6--163.dxf");
                */
                
// Model 100 -- doors
       // Doors     
            /*linear_extrude(height = h_1doors, center = false, convexity = 10)
                import(file = "plan-6--179.dxf");
                */
                
// Model 110 -- assorted1
       // Assorted 1 story buildings
            /*linear_extrude(height = h_1story, center = false, convexity = 10)
                import(file = "plan-6--204.dxf");
                */
                
// Model 120 -- labels1
        // Label blocks
        /*color("white")
            linear_extrude(height = 0.125, center = false, convexity = 10)
                import(file = "plan-6--230.dxf");
        */
        
// Model 130 -- huge_antenna
        /*union(){
        color("blue")    // HUGE antenna
            translate([111.16,162.25,0])
                cylinder(r=2.5, h=h_7story+tallest_tower_height*4, $fn=16);
        // Stack more stuff on top of this
            translate([111.16,162.25,h_7story+tallest_tower_height*2])
            {   
                translate([0,2,0])
                    cylinder(r=5, h=h_2story);
                translate([0,-2,h_2story])
                    cylinder(r=5, h=h_2story);
                translate([0,0,h_4story])
                    cylinder(r=3, h=h_4story);
                translate([0,0,h_1story*8])
                    cylinder(r=5, h=h_3story);
                translate([0,0,h_1story*13  ])
                    cylinder(r=5, h=h_4story);
            }
        } */
        
        
// ========== White towers and domes ==========
        
// Model 150 -- brick_tower
        /*color("red")    // newer Red brick out tower
            translate([60,125,0])
                cylinder(r=5,h=h_35story, $fn=60);
                */
// Model 155 -- brick_tower_dome                
        color("white")
            translate([60,125,h_35story+4]){  
               /*union(){     // Red brick out tower dome                
                    sphere(r=6, $fn=100); 
                    translate([0,0,5.5])  // pip on top
                        cylinder(r=0.5,h=1, $fn=20);
                } */
// Model 157 -- brick_tower_catwalk                
                translate([0,0,-6]){ // catwalk
                    cylinder(r=6, h=0.25);
                    translate([0,0,0.5])
                        difference(){
                            cylinder(r=7, h=1);
                            cylinder(r=6.75, h=6);
                    }
                }
            }  
        
// Model 160 -- west_tower_dome
        /*color("white")
           translate([81,141.75,h_7story+4.5]) // "West" tower
                {
                    sphere(r=10.5);
                    translate([0,0,-5])
                        cylinder(r=11.5,h=0.5);
                    translate([0,0,13])
                        sphere(r=4, $fn=20);
                } */
         
// Model 170 -- north_towers
        /*color("white")
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
            } */

// Model 180 -- roof_fixtures
        /*color("white")
        {
            translate([225,165,h_6story])  // Disk on center roof
                difference(){
                    cylinder(r=11, h=0.5);
                    cylinder(r=10, h=1);
                }
            translate([232,145,h_6story])  // Center roof Hatch
                cube([2,4,0.5]);
            translate([201,116,h_6story])  // T-roof Hatch
                cube([2,4,0.5]);
        }*/
            
            
         /*color("white"){  // roof derricks
            translate([201,100,h_35story])  
                derrick();
            translate([180,100,h_35story])  
                derrick();
            translate([220,100,h_35story])  
                derrick();
            translate([180,80,h_35story])  
                rotate([0,0,90])
                derrick();
        }*/
            
        //cube([5,5,5]);
        
        //  Render module modules at origin
        //derrick();
    }
    
    module derrick() {
        //beam_angle=100;               //down
        //beam_translation=[0,2.5,3.5];   //down
        beam_angle=0;                   //up
        beam_translation=[0,0,0.5];     //up
        
        translate([0.5,0,0])
            cylinder(r=0.25, h=3, $fn=15);
        translate([-0.5,0,0])
            cylinder(r=0.25, h=3, $fn=15);
        translate(beam_translation)
            rotate([beam_angle,0,0]){
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
    