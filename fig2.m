clear all;
close all;

sq = SquarePrimitive;

xlim([-10 10]);
ylim([-10 10]);
pbaspect([1 1 1]);

ori = [0 0];
ls = [5 -8];
radius = 4;

sq.center = ori;
sq.width = radius*2;
sq.rotation = 0;

plotPoint(ori, 'ob');
plotPoint(ls, 'hr');

plotLine(ori, ls, ':r');

plotLine(ori, [radius 0], '--g');
plotLine(ori, [0 radius], '--g');

plotLine(ori, getPoint(sq, 25), '-r');

plot(sq);
plotInnerBounds(sq);
plotOuterBounds(sq);
plotBlockingEdge(sq, ls);

legend('Center', 'Light Source');