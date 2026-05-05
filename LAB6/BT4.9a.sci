// Bai 4.9a: x(n) = u(n) - u(n-6)
omega = linspace(-%pi, %pi, 1000);

X     = exp(-%i*5*omega/2) .* sin(3*omega) ./ sin(omega/2 + %eps);
ampX  = abs(X);
phaseX = atan(imag(X), real(X));

scf(0); clf();
subplot(2,1,1);
plot(omega, ampX, 'b');
xtitle('Pho bien do |X(w)| - bai 4.9a', 'w (rad)', '|X(w)|');
xgrid();
subplot(2,1,2);
plot(omega, phaseX, 'r');
xtitle('Pho pha goc X(w) - bai 4.9a', 'w (rad)', 'goc X(w) (rad)');
xgrid();
