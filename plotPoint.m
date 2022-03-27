% plotPoint
% Author: Jesper Glas
% Desc: Plot a point.

function h = plotPoint(p, options)

if ~exist('options', 'var')
    options = 'hr';
end

hold on
h = plot(p(1), p(2), options);
hold off