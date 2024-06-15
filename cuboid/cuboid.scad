/*
*******************************************
Objekt Info: Ecken abrunden mit cuboid

*******************************************
Version: 08.02.2023 khf


//***************   Auswahl   *************

keine

//*****************************************

//***************   Libraries  ************/
include <../lib/std.scad>
//*****************************************/

//***************  Parameter   *************

//keine


//**************   Programm  **************/


cuboid(
    [70,25,10], rounding=3,
    edges=[
    TOP+FRONT,
    TOP+BACK,
    TOP+LEFT,
    TOP+RIGHT,

    DOWN+FRONT,
    DOWN+BACK,
    DOWN+LEFT,
    DOWN+RIGHT,

    FRONT+RIGHT,
    FRONT+LEFT,

    BACK+LEFT,
    BACK+RIGHT,

    ],
    $fn=60
);


translate([0,0,-15])
cuboid(
    [70,25,10], rounding=3,
    edges=[
    TOP+FRONT,
    TOP+BACK,
    TOP+LEFT,
    TOP+RIGHT,

    DOWN+FRONT,
    DOWN+BACK,
    DOWN+LEFT,
    DOWN+RIGHT,


    ],
    $fn=60
);


translate([40, 40, 0])
cuboid([27,27,27], rounding=5);
    $fn=60;