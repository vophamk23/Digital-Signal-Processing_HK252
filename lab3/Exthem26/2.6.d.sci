clf();
// Thiết lập trục thời gian
n = -2:10; 

// (1) Vẽ tín hiệu x(n) = 1 cho 0 <= n <= 3
xn = bool2s(n >= 0 & n <= 3);

subplot(3, 2, 1);
plot2d3(n, xn); plot(n, xn, "ro");
title("(1) Input signal x(n)");
xlabel("n"); ylabel("x(n)");

// (2) Xác định y(n) = n * x(n)
yn = n .* xn; 

subplot(3, 2, 2);
plot2d3(n, yn); plot(n, yn, "bo");
title("(2) Output y(n) = n*x(n)");
xlabel("n"); ylabel("y(n)");

// (3) Vẽ tín hiệu y1(n) = y(n-2)
y1 = [zeros(1, 2), yn(1:$-2)];

subplot(3, 2, 3);
plot2d3(n, y1); plot(n, y1, "go");
title("(3) Shifted output y1(n) = y(n-2)");
xlabel("n"); ylabel("y1(n)");

// (4) Xác định x2(n) = x(n-2)
x2 = [zeros(1, 2), xn(1:$-2)];

subplot(3, 2, 4);
plot2d3(n, x2); plot(n, x2, "mo");
title("(4) Shifted input x2(n) = x(n-2)");
xlabel("n"); ylabel("x2(n)");

// (5) Xác định y2(n) = T[x2(n)] = n * x2(n)
y2 = n .* x2;

subplot(3, 2, 5);
plot2d3(n, y2); plot(n, y2, "ko");
title("(5) Output of shifted input y2(n) = n*x2(n)");
xlabel("n"); ylabel("y2(n)");
