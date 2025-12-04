$fn = 200;

rohr_aussen = 6;      // Außendurchmesser des Rohrs
wand = 1;             // Wandstärke
ring_radius = 15;    // Abstand von Mitte zum Rohrzentrum

rotate_extrude()
translate([ring_radius, 0])
difference() {
    circle(d = rohr_aussen);
    circle(d = rohr_aussen - 2*wand);
}
