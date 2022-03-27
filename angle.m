% Angle
% Author: Jesper Glas
% Desc: Function to get the angle of edge between two points

function h = angle(p1, p2)

y = p2(2) - p1(2);
x = p2(1) - p1(1);

slope = y / x;

h = atand(slope);