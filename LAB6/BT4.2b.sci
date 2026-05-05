// Bai 4.2b: xa(t) = A*exp(-a*|t|), a > 0
// Xac dinh: Xa(F) = 2*a*A / (a^2 + 4*pi^2*F^2)
A = 1; a = 1;
F = linspace(-5, 5, 1000);

// Tinh Xa(F)
Xa      = (2 * a * A) ./ (a^2 + (2 * %pi * F).^2);
ampXa   = abs(Xa);
phaseXa = atan(imag(Xa), real(Xa));

// Ve do thi
scf(0); clf();

// Pho bien do
subplot(2, 1, 1);
plot(F, ampXa, 'b');
xtitle('Pho bien do |Xa(F)| - ham mu hai phia', 'F (Hz)', '|Xa(F)|');
xgrid();

// Pho pha
subplot(2, 1, 2);
plot(F, phaseXa, 'r');
xtitle('Pho pha goc Xa(F) - ham mu hai phia', 'F (Hz)', 'goc Xa(F) (rad)');
xgrid();
