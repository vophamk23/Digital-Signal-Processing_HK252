// Bai 4: H(omega) = e^{j2w} / (e^{j2w} + 0.1*e^{jw} + 0.2)
omega = linspace(-%pi, %pi, 1000);

// Calculate H
z      = exp(%i * omega);
H      = z.^2 ./ (z.^2 + 0.1 * z + 0.2);
ampH   = abs(H);
phaseH = atan(imag(H), real(H));

// Plot
scf(0); clf();

// Amplitude spectrum
subplot(2, 1, 1);
plot(omega, ampH, 'b');
xtitle('Pho bien do cua H(w)', 'w (rad)', '|H(w)|');
xgrid();

// Phase spectrum
subplot(2, 1, 2);
plot(omega, phaseH, 'r');
xtitle('Pho pha cua H(w)', 'w (rad)', 'goc H(w) (rad)');
xgrid();
