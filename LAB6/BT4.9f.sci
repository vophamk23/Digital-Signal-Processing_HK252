// Bai 4.9f: x(n) = 2 - (1/2)^n voi |n| <= 4
n     = -4:4;
x     = 2 - (0.5).^n;
omega = linspace(-%pi, %pi, 1000);

// Tinh DTFT truc tiep tu dinh nghia
X = zeros(1, length(omega));
for k = 1:length(omega)
    X(k) = sum(x .* exp(-%i * omega(k) * n));
end
ampX   = abs(X);
phaseX = atan(imag(X), real(X));

scf(0); clf();
subplot(2,1,1);
plot(omega, ampX, 'b');
xtitle('Pho bien do |X(w)| - bai 4.9f', 'w (rad)', '|X(w)|');
xgrid();
subplot(2,1,2);
plot(omega, phaseX, 'r');
xtitle('Pho pha goc X(w) - bai 4.9f', 'w (rad)', 'goc X(w) (rad)');
xgrid();
