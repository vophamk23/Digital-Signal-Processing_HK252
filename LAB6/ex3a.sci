// ── Bài 3a: x1(n) = (0.1)^n * u(n) ──────────────────────────
omega = linspace(-%pi, %pi, 1000);

// Tính X1(omega) = 1 / (1 - 0.1*e^{-jw})
X1      = 1 ./ (1 - 0.1 * exp(-%i * omega));
ampX1   = abs(X1);
phaseX1 = atan(imag(X1), real(X1));

// ── Vẽ đồ thị ─────────────────────────────────────────────────
scf(0); clf();

// Phổ biên độ
subplot(2, 1, 1);
plot(omega, ampX1, 'b');
xtitle('Pho bien do cua X1(w)', 'w (rad)', '|X1(w)|');
xgrid();

// Phổ pha
subplot(2, 1, 2);
plot(omega, phaseX1, 'r');
xtitle('Pho pha cua X1(w)', 'w (rad)', 'goc X1(w) (rad)');
xgrid();s
