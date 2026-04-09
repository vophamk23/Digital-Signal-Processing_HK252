clf();

n = -5:5;
x = zeros(1, 11);
x(5:7) = [1, -3, -2];

x_flip = x($:-1:1);
xe = (x + x_flip) ./ 2;
xo = (x - x_flip) ./ 2;

idx_x  = find(x  ~= 0);
idx_xe = find(xe ~= 0);
idx_xo = find(xo ~= 0);

subplot(3, 1, 1);
plot2d3(n, x, style=2);
plot2d(n(idx_x), x(idx_x), style=-4);
title('Original Signal x(n)');
xlabel('n');
ylabel('x(n)');

subplot(3, 1, 2);
plot2d3(n, xe, style=5);
plot2d(n(idx_xe), xe(idx_xe), style=-4);
title('Even Component xe(n)');
xlabel('n');
ylabel('xe(n)');

subplot(3, 1, 3);
plot2d3(n, xo, style=3);
plot2d(n(idx_xo), xo(idx_xo), style=-4);
title('Odd Component xo(n)');
xlabel('n');
ylabel('xo(n)');
