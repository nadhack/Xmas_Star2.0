// Star tree topper adaptor
// Use M2 x 8mm screws to secure 

$fn=60;

// 8 for below ESP32 module, 22 for above
$frameHeight=22;
$frameThickness=2;

// Part that slips over tree top point
module treeHolder() {
    rotate([-90,0,0]) 
    difference() {
        union() {
            cylinder(h=50,d1=30,d2=20,center=false);
            translate([-3,1,0]) cube([6,15,50]);
        }
        cylinder(h=50,d1=26,d2=16,center=false);
    }
}

// Tower with screw holes
module screwTower() {
    difference() {
        cylinder(h=$frameHeight,d=6,center=false);
        cylinder(h=8,d=2,center=false);
    }
}

// T-shaped frame to screw onto star
module starFrame() {
    screwTower();
    translate([55.5,0,0]) screwTower();
    translate([27.75,85,0]) screwTower();
    translate([0,-3,$frameHeight-$frameThickness]) cube([55.5,6,2]);
    translate([24.75,0,$frameHeight-$frameThickness]) cube([6,85,2]);
}

// Put it all together
module treeTopper() {
 translate([27.75,-3,$frameHeight+15]) treeHolder();
    starFrame();
}


treeTopper();


