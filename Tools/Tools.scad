


//********************************************************************
//                                  Auswahl
//*********************************************************************
//Auswahl 1=Schraube, 2=Mutter, 3=Flansch-Mutter, 4=Kreuzschlitzwerkzeug
                            modul = "1";
//*********************************************************************



//********************************************************************* 
//                                  Programm
//*********************************************************************  

print_modul();

module print_modul() 
 {
	if (modul == "1") {
		Schraube();
	} 
    else if (modul == "2") {
		Mutter();
	} 
        else if (modul == "3") {
		Flansch();
	}
    else if (modul == "4") {
		Tool();
	}    
 }

//*********************************************************************                  
include <../ma_lib/constants.scad>
use <../ma_lib/metric_screws.scad>
use <../ma_lib/phillips_drive.scad>
module Schraube()
{
$fn=60;
metric_bolt(headtype="hex", pitch=3, size=13.1, l=40, phillips="#3");
/*    
    translate(v = [0, 0, -28])
    metric_nut(size=15.1, hole=true, pitch=3, details=true, center=true);
    */
}

module Mutter()
{
difference() {
metric_nut(size=15.1, hole=true, pitch=3, details=true, center=true);
union(){
difference() {
$fn=60;
cylinder(h = 30, d = 55, center = true);
$fn=6;
cylinder(h = 31, d = 23.8, center = true);
}
}
}
}

module Flansch()
{
difference() {
metric_nut(size=15.1, hole=true, pitch=3, details=true, center=true);
translate(v = [0, 0, 6])
union(){

difference() {
cylinder(h = 3, d1 = 30, d2 = 20,center = true);
translate(v = [0, 0, -1])
cylinder(h = 3.1, d1 = 28, d2 = 18,center = true);
}
}    
    
    
union(){
difference() {
$fn=60;
cylinder(h = 30, d = 55, center = true);
$fn=6;
cylinder(h = 31, d = 22.7, center = true);
}
}
}
$fn=60;
difference() {
translate(v = [0, 0, -4])
cylinder(h = 3, d1 = 30, d2 = 19,center = true);
translate(v = [0, 0, -6.4])
cylinder(h = 8, d = 15.3, center = true);
}


difference() {
translate(v = [0, 0, -6])
cylinder(h = 1, d = 30, center = true);
translate(v = [0, 0, -9])
cylinder(h = 8, d = 15.3, center = true);    
}

}

module Tool()
{
cube(size = [9,9,11], center = true);
translate(v = [0, 0, -20])
phillips_drive(size="#3", shaft=6, l=20);
}
//*********************************************************************  