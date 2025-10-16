/*
*******************************************
Objekt Info: Mehrfach Rotation

*******************************************
Version: 16.10.2025 khf
*******************************************
*/

//***************   Auswahl   *************

        //Auswahl 1=alles, 1= Quader, 2=Zylinder, 3=Kugel 
        auswahl="0";

//***************   Libraries  ************

//keine

//*****************************************

//***************  Parameter   *************
$fn=60;
//*****************************************

//**************   Programm  **************
translate([0, 0, 22])
difference() {
color("red")
cylinder(h = 5, r = 71);

translate([0, 0, -1])
for (i = [0 : 23]) {
    rotate([0, 0, i * 15])  // 360° / 24 = 15°
    translate([60, 0, 0])   // Abstand vom Zentrum
    //cylinder(h = 10, r = 2); // Dein Objekt (z.B. ein Zylinder)
     rotate([0, 0, -25])
     cube([12,5,32],false);   
}
}


color("red")
cylinder(h = 5, r = 71);

translate([0, 0, -1])
for (i = [0 : 23]) {
    rotate([0, 0, i * 15])  // 360° / 24 = 15°
    translate([60, 0, 0])   // Abstand vom Zentrum
    //cylinder(h = 10, r = 2); // Dein Objekt (z.B. ein Zylinder)
     rotate([0, 0, -25])
     cube([12,5,32],false);   
}