// Bai 4.2a: xa(t) = A*exp(-a*t)*u(t), a > 0
// Xac dinh: Xa(F) = A / (a + j*2*pi*F)
A = 1; a = 1;
F = linspace(-5, 5, 1000);

// Tinh Xa(F)
Xa     = A ./ (a + %i * 2 * %pi * F);
ampXa  = abs(Xa);
phaseXa = atan(imag(Xa), real(Xa));

// Ve do thi
scf(0); clf();

// Pho bien do
subplot(2, 1, 1);
plot(F, ampXa, 'b');
xtitle('Pho bien do |Xa(F)| - ham mu mot phia', 'F (Hz)', '|Xa(F)|');
xgrid();

// Pho pha
subplot(2, 1, 2);
plot(F, phaseXa, 'r');
xtitle('Pho pha goc Xa(F) - ham mu mot phia', 'F (Hz)', 'goc Xa(F) (rad)');
xgrid();
