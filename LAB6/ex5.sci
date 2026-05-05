// Bai 5: Y(omega) = (1 + e^{-jw}) / (1 - 0.5*e^{-jw})
omega = linspace(-%pi, %pi, 1000);

// Calculate Y
Y      = (1 + exp(-%i * omega)) ./ (1 - 0.5 * exp(-%i * omega));
ampY   = abs(Y);
phaseY = atan(imag(Y), real(Y));

// Plot
scf(0); clf();

// Amplitude spectrum
subplot(2, 1, 1);
plot(omega, ampY, 'b');
xtitle('Pho bien do cua Y(w)', 'w (rad)', '|Y(w)|');
xgrid();

// Phase spectrum
subplot(2, 1, 2);
plot(omega, phaseY, 'r');
xtitle('Pho pha cua Y(w)', 'w (rad)', 'goc Y(w) (rad)');
xgrid();
