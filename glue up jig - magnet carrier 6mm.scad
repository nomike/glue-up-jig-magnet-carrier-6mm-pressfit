// File: glue up jig - magnet carrier 6mm.stl
// X size: 45.536
// Y size: 45.536
// Z size: 6.2
// X position: -1.768
// Y position: -43.768
// Z position: -4.4
NE=1; NW=2; SW=3; SE=4; CTR=5;
module obj2origin (where) {
	if (where == NE) {
		objNE ();
	}

	if (where == NW) {
		translate([ -45.536 , 0 , 0 ])
		objNE ();
	}

	if (where == SW) {
		translate([ -45.536 , -45.536 , 0 ])
		objNE ();
	}

	if (where == SE) {
		translate([ 0 , -45.536 , 0 , ])
		objNE ();
	}

	if (where == CTR) {
	translate([ -22.768 , -22.768 , -3.1 ])
		objNE ();
	}
}

module objNE () {
	translate([ 1.768 , 43.768 , 4.4 ])
		import("glue up jig - magnet carrier 6mm.stl");
}
