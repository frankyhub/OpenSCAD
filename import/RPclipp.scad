/*
*******************************************
Objekt Info: Raspi Clipp

*******************************************
Version: 21.02.2025 khf
*******************************************
*/           

//***************   Auswahl   *************
//keine
//*****************************************

//***************   Libraries  ************

//svgfile = "";

//*****************************************

//***************  Parmeter   *************
$fn = 100;
//*****************************************

//**************   Programm  **************

linear_extrude(height = 10, center = true, convexity = 10)
import("RPclipp.svg");

// Klemmung u
translate([67,31,0])
union(){
rotate(a = [0, 90,0])
cylinder(53, 2, 2);
sphere(r = 2);
translate([53,0,0])
sphere(r = 2);
}

// Klemmung o
translate([62,44,0])
union(){
rotate(a = [-21, 90,0])
cylinder(53, 2, 2);
sphere(r = 2);
translate([49.5,19,0])
sphere(r = 2);
}



