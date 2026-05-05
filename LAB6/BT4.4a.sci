// Bai 4.4a: Tin hieu tuan hoan roi rac chu ky N = 6
x = [3, 2, 1, 0, 1, 2];   // Mot chu ky co ban
N = length(x);             // N = 6
n = 0:N-1;
k = 0:N-1;
// Tinh he so Fourier c_k = DFT / N
X      = fft(x, -1);       // DFT thuan (Scilab dung -1)
ck     = X / N;            // He so chuan hoa theo DTFS
ampCk  = abs(ck);
phaseCk = atan(imag(ck), real(ck));
// Ve do thi
scf(0); clf();
// Tin hieu x(n)
subplot(3, 1, 1);
plot2d3(n, x, style=5);
plot(n, x, 'ob');
xtitle('Tin hieu x(n) - mot chu ky', 'n', 'x(n)');
xgrid();
// Pho bien do
subplot(3, 1, 2);
plot2d3(k, ampCk, style=5);
plot(k, ampCk, 'ob');
xtitle('Pho bien do |c_k|', 'k', '|c_k|');
xgrid();
// Pho pha
subplot(3, 1, 3);
plot2d3(k, phaseCk, style=5);
plot(k, phaseCk, 'or');
xtitle('Pho pha goc c_k', 'k', 'goc c_k (rad)');
xgrid();
