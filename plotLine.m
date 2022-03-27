% plotLine
% Author: Jesper Glas
% Desc: Used to plot a line between two points.

function h = plotLine(p1, p2, options)

if ~exist('options', 'var')
    options = '-g';
end

x = [p1(1) p2(1)];
y = [p1(2) p2(2)];

hold on
h = plot(x, y, options)
hold off