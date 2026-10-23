/*
*******************************************
Objekt Info: (Prisma) Polygon Beispiel

*******************************************
Version: 22.10.2026 khf
//*****************************************/

//**************   Programm  **************/

//************* Polygon 1 *****************

l1=60;
b1=40;
h1=15;
e1=10;

 
polyhedron(
points = [
//x y  z
[0, 0, 0],    // Bottom-left corner
[l1, 0, 0],   // Bottom-right corner
[(l1-e1), h1, e1], // Top-right corner
[e1, h1, e1], // Top-left corner
[0, 0, b1],   // Bottom-left (top face)
[l1, 0, b1],  // Bottom-right (top face)
[(l1-e1), h1,(b1-e1)], // Top-right (top face)
[e1, h1, (b1-e1)]  // Top-left (top face)
],

faces = [
[0, 1, 2, 3], // Bottom face
[4, 5, 6, 7], // Top face
[0, 1, 5, 4], // Front face
[1, 2, 6, 5], // Right face4
[3, 0, 4, 7]  // Left face
]
);

//************* Polygon 2 *****************

l2=30;
b2=20;
h2=8;
e2=5;

translate(v = [15, 15, 10]) { 
polyhedron(
points = [
//x y  z
[0, 0, 0],    // Bottom-left corner
[l2, 0, 0],   // Bottom-right corner
[(l2-e2), h2, e2], // Top-right corner
[e2, h2, e2], // Top-left corner
[0, 0, b2],   // Bottom-left (top face)
[l2, 0, b2],  // Bottom-right (top face)
[(l2-e2), h2,(b2-e2)], // Top-right (top face)
[e2, h2, (b2-e2)]  // Top-left (top face)
],

faces = [
[0, 1, 2, 3], // Bottom face
[4, 5, 6, 7], // Top face
[0, 1, 5, 4], // Front face
[1, 2, 6, 5], // Right face4
[3, 0, 4, 7]  // Left face
]
    );
 }



