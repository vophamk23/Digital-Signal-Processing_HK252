// Exercise 7: Multiplication of two discrete-time signals

clf();

// Time index
n = -1:3;

// Define signals
x1 = [0, 0, 1, 3, -2];   // x1(n) = {0↑, 1, 3, -2}
x2 = [0, 1, 2, 3, 0];    // x2(n) = {0, 1↑, 2, 3}

// Signal multiplication
y = x1 .* x2;

// -------- Plot x1(n) --------
subplot(3,1,1);
plot2d3(n, x1);
plot(n, x1, "ro");
title("Signal x1(n)");
xlabel("n");
ylabel("x1(n)");

// -------- Plot x2(n) --------
subplot(3,1,2);
plot2d3(n, x2);
plot(n, x2, "b*");
title("Signal x2(n)");
xlabel("n");
ylabel("x2(n)");

// -------- Plot y(n) --------
subplot(3,1,3);
plot2d3(n, y);
plot(n, y, "go");
title("Result y(n) = x1(n) * x2(n)");
xlabel("n");
ylabel("y(n)");
