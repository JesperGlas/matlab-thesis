% Figure 1 - Thesis
% Author: Jesper Glas

function h = plotCircle(p, r, options)

if ~exist('options', 'var')
    options = '-b';
end

th = 0:pi/50:2*pi;
xunit = r * cos(th) + p(1);
yunit = r * sin(th) + p(2);

hold on
h = plot(xunit, yunit, options);
hold off
