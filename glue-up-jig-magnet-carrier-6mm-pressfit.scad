/*
Glue Up Jig - Magnet Carrier 6mm - Pressfit Remix

Copyright 2024 nomike[AT]nomike[DOT]com

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

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

