// Bai 4.11: Ve tin hieu y(n)
// Xac dinh mang chi so va gia tri y(n)
n_vals  = [-5, -3, -2, -1,  1,    3  ];
yr_vals = [0.5,  1,  2,  0, 1.5,  0  ];   // phan thuc
yi_vals = [0,  -0.5, 0, -2,  2,  0.5 ];   // phan ao

n_plot = -6:4;
yr = zeros(1, length(n_plot));
yi = zeros(1, length(n_plot));
for i = 1:length(n_vals)
    idx = find(n_plot == n_vals(i));
    yr(idx) = yr_vals(i);
    yi(idx) = yi_vals(i);
end

scf(0); clf();
subplot(2, 1, 1);
plot2d3(n_plot, yr, style=5);
plot(n_plot, yr, 'ob');
xtitle('Phan thuc Re{y(n)}', 'n', 'Re{y(n)}');
xgrid();

subplot(2, 1, 2);
plot2d3(n_plot, yi, style=5);
plot(n_plot, yi, 'or');
xtitle('Phan ao Im{y(n)}', 'n', 'Im{y(n)}');
xgrid();
