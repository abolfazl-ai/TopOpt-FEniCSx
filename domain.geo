// Parameters
dx = 1;
dy = 0.5;
size = 0.01;

// Points
Point(1) = {0, 0, 0, size};
Point(2) = {dx, 0, 0, size};
Point(3) = {dx, dy, 0, size};
Point(4) = {0, dy, 0, size};

// Lines
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};

// Surfaces
Curve Loop(1) = {1, 2, 3, 4};
Plane Surface(1) = {1};

// Physical groups
Physical Point(13) = {1, 2, 3, 4};
Physical Surface(14) = {1};

// Enforce Hexa meshing
Transfinite Surface {1};
Recombine Surface {1};