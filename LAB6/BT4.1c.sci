// Bai 4.1c: Ve mat do pho cong suat Sxx(F)
A = 1; tau = 1;
k = -5:5;             // Xet k tu -5 den 5
F = k / tau;          // Truc tan so F

// Tinh cac gia tri |c_k|^2
ck2 = (4 * A^2) ./ ((%pi^2) * (4 * k.^2 - 1).^2);

// Ve do thi
scf(0); clf();
plot2d3(F, ck2, style=5);   // Ve dang xung (stem)
plot(F, ck2, 'ob');         // Them cham tron o dinh xung
xtitle('Mat do pho cong suat Sxx(F) (voi A=1, tau=1)', 'F (Hz)', 'Sxx(F)');
xgrid();
