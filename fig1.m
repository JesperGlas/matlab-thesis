clear all;

% Set margins of plot
ylim([-10, 10]);
xlim([-10, 10]);

ori = [0 0];
ls = [5 -8];
r = 4;

plotPoint(ori, 'og');
plotPoint(ls);
plotLine(ori, [4 0], '--b');

[bh, bp1, bp2] = plotEdge(ori, r, normal(ori, ls), '-g');

plotLine(ls, bp1, ':m');
plotLine(ls, bp2, ':m');

plotSquare(ori, r*2, 0);
plotCircle(ori, r, 'b');
plotLine(ori, ls, ':r');

legend('Center', 'Light Source', 'Radius', 'Blocking Edge');