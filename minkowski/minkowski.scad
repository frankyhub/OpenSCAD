// Programm für Zylinder mit abgerundeten Kanten - minkowski()

// Parameter
height = 75;       // Höhe des Zylinders
d1 = 60;       // Radius des Zylinders
fillet = 10;        // Abrundungsradius
$fn = 100;         // Feinere Auflösung für glatte Kanten

color( "red", 1.0 ) {
// Abgerundeter Zylinder (Fillet über Minkowski)
minkowski() {
    cylinder(h = height - 2*fillet, d = d1 - fillet);
    sphere(r = fillet);
        }
       }