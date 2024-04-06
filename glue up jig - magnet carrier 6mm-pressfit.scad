include<glue up jig - magnet carrier 6mm.scad>;

corner_distance = 9.768;
gridfinity_magnet_distance = 26.0;
total_base_height = 3.4;
original_magnet_hole_diameter = 6.5;
original_magnet_hole_fill_padding = 0.1;
magnet_hole_height = 2.6;
magnet_hole_diameter = 6.09;


difference() {
    union() {
        // import the magnet carrier
        obj2origin(NE);
        // Fill up the original holes
        translate([corner_distance, corner_distance, 0]) cylinder(d=original_magnet_hole_diameter + original_magnet_hole_fill_padding, h=total_base_height, $fn=30);
        translate([corner_distance + gridfinity_magnet_distance, corner_distance, 0]) cylinder(d=original_magnet_hole_diameter + original_magnet_hole_fill_padding, h=total_base_height, $fn=30);
        translate([corner_distance, corner_distance + gridfinity_magnet_distance, 0]) cylinder(d=original_magnet_hole_diameter + original_magnet_hole_fill_padding, h=total_base_height, $fn=30);
        translate([corner_distance + gridfinity_magnet_distance, corner_distance + gridfinity_magnet_distance, 0]) cylinder(d=original_magnet_hole_diameter + original_magnet_hole_fill_padding, h=total_base_height, $fn=30);
    }
    translate([corner_distance, corner_distance, 0]) cylinder(d=magnet_hole_diameter, h=magnet_hole_height, $fn=30);
    translate([corner_distance + gridfinity_magnet_distance, corner_distance, 0]) cylinder(d=magnet_hole_diameter, h=magnet_hole_height, $fn=30);
    translate([corner_distance, corner_distance + gridfinity_magnet_distance, 0]) cylinder(d=magnet_hole_diameter, h=magnet_hole_height, $fn=30);
    translate([corner_distance + gridfinity_magnet_distance, corner_distance + gridfinity_magnet_distance, 0]) cylinder(d=magnet_hole_diameter, h=magnet_hole_height, $fn=30);
}

