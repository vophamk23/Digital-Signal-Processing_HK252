// Bai 4.5a: Mat do pho cong suat cua x(n)
// x(n) = 2 + 2*cos(pi*n/4) + cos(pi*n/2) + 0.5*cos(3*pi*n/4)
N = 8;
n = 0:N-1;
x = 2 + 2*cos(%pi*n/4) + cos(%pi*n/2) + 0.5*cos(3*%pi*n/4);
// Tinh he so Fourier c_k
X  = fft(x, -1);
ck = X / N;
PSD = abs(ck).^2;   // |c_k|^2
k = 0:N-1;
// Ve do thi
scf(0); clf();
plot2d3(k, PSD, style=5);
plot(k, PSD, 'ob');
xtitle('Power Density Spectrum of X(w)', 'k', '|c_k|^2');
xgrid();
