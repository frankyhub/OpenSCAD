/*
*******************************************
Objekt Info: Beispiel Modul-Parameter

*******************************************
Version: 30.04.2022 khf
*******************************************
*/

//***************   Auswahl   *************

//keine

//***************   Libraries  ************

//keine

//*****************************************

//***************  Parameter   *************
$fn=60; //Aufloesung

a= 20;
b= 5;
z= 12;
y= 6;
c = true; // Ausrichtung Mitte true oder false

//*****************************************

//**************   Programm  **************

cylinder(h = a, r1 = b, r2 = z, center = c);

cube(size = [a, b, z], center = c);

sphere(d = z+y);

