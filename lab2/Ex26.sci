clf();
n = -1 : 3;
x1 = [0, 0, 1, 3, -2];
x2 = [0, 1, 2, 3, 0];
y = x1 + x2;

subplot(3, 1, 1);
plot2d3(n, x1);
plot(n, x1, "ro");
title("Original Signal x1(n)");
xlabel("n"); 
ylabel("x1(n)");

subplot(3, 1, 2);
plot2d3(n, x2);
plot(n, x2, "b*");
title("Original Signal x2(n)");
xlabel("n");
ylabel("x2(n)");

subplot(3, 1, 3);
plot2d3(n, y);
plot(n, y, "go");
title("Sum Signal y(n) = x1(n) + x2(n)");
xlabel("n"); 
ylabel("y(n)");
