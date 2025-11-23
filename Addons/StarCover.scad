// Cover for xmas star pcb

module outerCircle() {
    difference() {
        cylinder(h=0.5,d=115,center=true);
        cylinder(h=0.5,d=90,center=true);
    }
}

module innerCircle() {
    cylinder(h=0.5,d=65,center=true);
}

module outer() {
    scale([1.05,1.05,1]) linear_extrude(height = 4.0) import(file="staroutline.svg",center=true);
}

module inner() {
    translate([0,0,0.5]) scale([1.01,1.01,1]) linear_extrude(height = 3.0) import(file="staroutline.svg",center=true);

//    difference() {
        #scale([0.98,0.98,1]) linear_extrude(height = 0.5)
            import(file="staroutline.svg",center=true);
        translate([0,-5,0.250]) outerCircle();
        translate([0,-5,0.250]) innerCircle();
//    }
}

module cover() {
    difference() {
        outer();
        inner();
        translate([0,-5,0.250]) outerCircle();
        translate([0,-5,0.250]) innerCircle();    }
}


cover();

//inner();

