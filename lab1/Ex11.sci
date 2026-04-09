clf();

x1 = 1 : 4;
result1 = x1 + 1;
disp(result1)
subplot(3, 1, 1);
plot2d3(x1, result1);
plot(x1, result1, "ro");
title("Vector x + 1");
xlabel("x"); ylabel("x+1");

x2 = 1 : 4;
y2 = 5 : 8;
result2 = x2 .* y2;
disp(result2)
subplot(3, 1, 2);
plot2d3(x2, result2);
plot(x2, result2, "gs");
title("Vector x .* y");
xlabel("x"); ylabel("x*y");

x3 = linspace(0, %pi, 10);
result3 = sin(x3);
disp(result3)
subplot(3, 1, 3);
plot2d3(x3, result3);
plot(x3, result3, "b*");
title("Vector sin(x) from 0 to pi");
xlabel("x"); ylabel("sin(x)");
