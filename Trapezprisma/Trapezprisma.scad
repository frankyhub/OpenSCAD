/*
*******************************************
Objekt Info: Beispiel Trapezprisma mit Durchbruch

*******************************************
Version: 22.10.2026 khf
*****************************************
lib: https://github.com/BelfrySCAD/BOSL2/wiki/shapes2d.scad#functionmodule-trapezoid
**************   Programm  **************/

include <lib/std.scad>


difference() {
    linear_extrude(height = 60)
    trapezoid(h=30, w1=70, ang=60);

//Durchbruch Lange Seite
        translate(v = [0, -7.6, 65]) { 
        rotate([180, 0, 0]) { 
        linear_extrude(height = 70)
    trapezoid(h=15, w1=30, ang=60);
    }
  }
  
//Durchbruch kurze Seite
        translate(v = [-35, -7.6, 30]) { 
        rotate([0, 90, 0]) { 
    linear_extrude(height = 70)
        trapezoid(h=15, w1=30, ang=60);
    }
  }
 } 
  
 difference() { 
 //Trapez oben 
    translate(v = [0, 22.5, 5]) { 
    linear_extrude(height = 50)
    trapezoid(h=15, w1=36, ang=60);
  }
  
     //Durchbruch Trapez oben längs
    translate(v = [0, 25.5, 2.5]) { 
    linear_extrude(height = 55)
    trapezoid(h=10, w1=15, ang=60);
    }
  
   //Durchbruch Trapez oben quer
  translate(v = [-25, 25.5, 30]) { 
    rotate([0, 90, 0]) { 
    linear_extrude(height = 50)
    trapezoid(h=10, w1=20, ang=60);
  }
 }
}
  





