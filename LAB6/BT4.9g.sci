// Bai 4.9g: x(n) = {-2, -1, 0, 1, 2}, n = -2..2
n     = -2:2;
x     = [-2, -1, 0, 1, 2];
omega = linspace(-%pi, %pi, 1000);

// Tinh DTFT truc tiep
X = zeros(1, length(omega));
for k = 1:length(omega)
    X(k) = sum(x .* exp(-%i * omega(k) * n));
end
ampX   = abs(X);
phaseX = atan(imag(X), real(X));

scf(0); clf();
subplot(2,1,1);
plot(omega, ampX, 'b');
xtitle('Pho bien do |X(w)| - bai 4.9g', 'w (rad)', '|X(w)|');
xgrid();
subplot(2,1,2);
plot(omega, phaseX, 'r');
xtitle('Pho pha goc X(w) - bai 4.9g', 'w (rad)', 'goc X(w) (rad)');
xgrid();
