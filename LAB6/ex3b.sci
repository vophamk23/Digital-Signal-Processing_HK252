// ── Bài 3b: x2(n) = d(n) + d(n-1) + d(n-2) + d(n-3) ─────────
omega = linspace(-%pi, %pi, 1000);

// Tính X2(omega) = 1 + e^{-jw} + e^{-j2w} + e^{-j3w}
X2      = 1 + exp(-%i * omega) + exp(-%i * 2 * omega) + exp(-%i * 3 * omega);
ampX2   = abs(X2);
phaseX2 = atan(imag(X2), real(X2));

// ── Vẽ đồ thị ─────────────────────────────────────────────────
scf(0); clf();

// Phổ biên độ
subplot(2, 1, 1);
plot(omega, ampX2, 'b');
xtitle('Pho bien do cua X2(w)', 'w (rad)', '|X2(w)|');
xgrid();

// Phổ pha
subplot(2, 1, 2);
plot(omega, phaseX2, 'r');
xtitle('Pho pha cua X2(w)', 'w (rad)', 'goc X2(w) (rad)');
xgrid();
