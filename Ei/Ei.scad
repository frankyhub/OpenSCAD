
$fn=100;

difference() {
scale([1, 1, 1.3])           // Streckung zur Eiform
sphere(r = 20);              // ergibt ca. 50 mm Länge


cylinder(h = 70, r1 = 1.5, r2 = 1.5, center = true);
}

