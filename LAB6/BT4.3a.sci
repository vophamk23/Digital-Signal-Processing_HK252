// Bai 4.3a: x(t) = (1 - |t|/tau) voi |t| <= tau, tau = 1
tau = 1;
F   = linspace(-5, 5, 1000);

// Tinh Xa(F) = tau * sinc^2(F*tau)
// Dung dinh nghia sinc(x) = sin(pi*x)/(pi*x)
Xa = tau * (sin(%pi * F * tau) ./ (%pi * F * tau + %eps)).^2;
ampXa   = abs(Xa);
phaseXa = atan(imag(Xa), real(Xa));

// Ve do thi
scf(0); clf();

// Pho bien do
subplot(2, 1, 1);
plot(F, ampXa, 'b');
xtitle('Pho bien do |Xa(F)| - xung tam giac', 'F (Hz)', '|Xa(F)|');
xgrid();

// Pho pha
subplot(2, 1, 2);
plot(F, phaseXa, 'r');
xtitle('Pho pha goc Xa(F) - xung tam giac', 'F (Hz)', 'goc Xa(F) (rad)');
xgrid();
