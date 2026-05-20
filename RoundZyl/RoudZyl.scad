   $fn=90;

include <std.scad>
ydistribute(80) {
    cyl(l=40, d=40, rounding1=15, orient=UP);
    cyl(l=40, d=40, chamfer2=5, orient=UP);
    cyl(l=40, d=40, chamfer1=12, rounding2=10, orient=UP);
}