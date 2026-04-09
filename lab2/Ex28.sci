clf();
n = -2 : 1;
x = [1, -2, 3, 6];

//câu a
n1 =-n($ : -1 : 1);
y1 = x($ : -1 : 1);

subplot(2, 1, 1);
plot2d3(n, x);
plot(n, x, "ro");
title("x(n)");
xlabel("n");
ylabel("x(n)");

subplot(2, 1, 2);
plot2d3(n1, y1);
plot(n1, y1, "ro");
title("y=x(-n)");
xlabel("n");
ylabel("y");

//câu b
scf(1);
n2 = n - 3;
y2 = x;

subplot(2, 1, 1);
plot2d3(n, x);
plot(n, x, "ro");
title("x(n)");
xlabel("n");
ylabel("x(n)");

subplot(2, 1, 2);
plot2d3(n2, y2);
plot(n2, y2, "ro");
title("y=x(n+3)");
xlabel("n");
ylabel("y");

//câu c
scf(2);
n3 = -n($:-1:1) - 2;
y3 = 2 * x($:-1:1);

subplot(2, 1, 1);
plot2d3(n, x);
plot(n, x, "ro");
title("x(n)");
xlabel("n");
ylabel("x(n)");

subplot(2, 1, 2);
plot2d3(n3, y3);
plot(n3, y3, "ro");
title("y(n)=2x(-n-2)");
xlabel("n");
ylabel("y");
