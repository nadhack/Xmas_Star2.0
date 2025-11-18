// template for xmas star pcb

module front() {
    difference() {
        cube([160,160,1.6]);
        translate([80,80,0]) 
        scale([1.01,1.01,1]) linear_extrude(height = 1.6) import(file="staroutline.svg",center=true);
        translate([5, 5, 1.20]) 
            linear_extrude(height = 0.5) {
                text("Front", font = "Liberation Sans:style=Bold");
            }
    }
}

// The back template, needs to be thicker and flipped over
module back() {
    difference() {
    translate([160,0,0]) rotate([0,180,0])
    difference() {
        cube([160,160,3.2]);
        translate([80,80,0]) 
        scale([1.01,1.01,1]) linear_extrude(height = 3.2) import(file="staroutline.svg",center=true);
    }


        translate([5, 5, -.40]) 
            linear_extrude(height = 0.5) {
                text("Rear", font = "Liberation Sans:style=Bold");
            }
    }
}

front();
//back();

