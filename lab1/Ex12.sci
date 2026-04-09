clf();

F = 50;          // Signal frequency (Hz)
Fs = 300;        // Sampling frequency (Hz)
T = 1 / F;       // Signal period (s)
Ts = 1 / Fs;     // Sampling period (s)
time = 5 * T;    // Total time: 5 periods
delta = 0.1;     // Quantization step

// ── 1. Analog Signal xa(t) ─────────────────────────────
t = linspace(0, time, 1000);
xa = 3 * sin(2 * %pi * F * t);

subplot(3, 1, 1);
plot(t, xa, "b");
plot(t, zeros(t), "k--");     // Zero reference line (y = 0)
title('(1) Analog Signal  xa(t) = 3·sin(100πt)');
xlabel("Time t (s)");
ylabel("Amplitude");
xgrid();

// ── 2. Discrete-Time Signal x(n) ──────────────────────
// Sampling: x(n) = xa(n·Ts) = 3·sin(πn/3)
// Periodicity: f = F/Fs = 1/6  →  N0 = 6 samples/cycle
n = 0:30;
xn = 3 * sin(2 * %pi * F * n * Ts);

subplot(3, 1, 2);
plot2d3(n, xn);                        // Stem plot
plot(n, xn, "ro");                     // Red dots at each sample
plot(n, zeros(n), "k--");             // Zero reference line (y = 0)
title("(2) Discrete-Time Signal  x(n) = 3·sin(πn/3),  N0 = 6");
xlabel("Sample index n");
ylabel("Amplitude");
xgrid();

// ── 3. Quantized Signal xq(n) ─────────────────────────
// Method: Truncation  →  xq(n) = Δ · floor(x(n) / Δ)
// Quantization error: -Δ < eq(n) ≤ 0
xq = floor(xn / delta) * delta;

subplot(3, 1, 3);
plot2d3(n, xq, style=5);              // Stem plot
plot(n, xq, "g*");                    // Green stars at each sample
plot(n, zeros(n), "k--");            // Zero reference line (y = 0)
title("(3) Quantized Signal  xq(n),  Truncation,  Δ = 0.1");
xlabel("Sample index n");
ylabel("Amplitude");
xgrid();
