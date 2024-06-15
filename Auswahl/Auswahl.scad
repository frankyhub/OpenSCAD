/*
*******************************************
Objekt Info: Modul-Auswahl

*******************************************
Version: 30.04.2022 khf
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

 

module cu(){
cube(5);
}

module cy(){
cylinder(10);
}

module sp(){
sphere(5);
}

module alles(){
    cube(5);
    cylinder(10);
    sphere(5);
}


module print(){
	if (auswahl == "1") {
		cu();
	} else if (auswahl == "2") {
		cy();
	} else if (auswahl == "3") {
		sp();
	} else {
		alles();
	}
}

print();

