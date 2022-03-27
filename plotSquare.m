% plotSquare
% Author: Jesper Glas
% Desc: Plot a square

function h = plotSquare(c, w, a)

radius = w/2;

X = @(r, a) c(1) + cos(deg2rad(a)) * r;
Y = @(r, a) c(2) + sin(deg2rad(a)) * r;

A = @(a) a + 45;

angles = [A(a) A(a)+90 A(a)+180 A(a)+270 A(a)];

x = X(radius, angles);
y = Y(radius, angles);

hold on
plot(x, y);
hold off