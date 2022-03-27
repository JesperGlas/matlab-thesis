% Edge
% Author: Jesper Glas
% Desc: Used to plot an edge.

function [h, p1, p2] = plotEdge(center, r, angle, options)

if ~exist('options', 'var')
    options = '--g';
end

x1 = center(1) - cos(deg2rad(angle)) * r;
x2 = center(1) + cos(deg2rad(angle)) * r;

y1 = center(2) - sin(deg2rad(angle)) * r;
y2 = center(2) + sin(deg2rad(angle)) * r;

x = [x1 x2]';
y = [y1 y2]';

hold on
h = plot(x, y, options);
hold off

p1 = [x1 y1];
p2 = [x2 y2];