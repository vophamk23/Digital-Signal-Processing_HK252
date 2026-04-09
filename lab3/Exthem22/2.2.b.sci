// ============================================================
// Define signal x(n) from Figure P2.2
// ============================================================
xn      = [0, 0, 1, 1, 1, 1, 0.5, 0.5, 0, 0];
xorigin = 4;                    // n=0 is at index 4

// ============================================================
// FUNCTION : fold
// PURPOSE  : Perform folding operation y(n) = x(-n)
// INPUTS   : xn      - sample values of input signal x(n)
//            xorigin - index of n=0 in vector xn (1-based)
// OUTPUTS  : yn      - reversed sample values of y(n)
//            yorigin - index of n=0 in vector yn (1-based)
// ============================================================
function [yn, yorigin] = fold(xn, xorigin)
    Nx      = length(xn);
    yn      = xn($:-1:1);           // reverse the sample vector
    yorigin = Nx - xorigin + 1;     // mirror the origin position
endfunction

// ============================================================
// FUNCTION : delay
// PURPOSE  : Perform delay operation y(n) = x(n - k)
// INPUTS   : xn      - sample values of input signal x(n)
//            xorigin - index of n=0 in vector xn (1-based)
//            k       - number of delay steps (k > 0)
// OUTPUTS  : yn      - sample values of output signal y(n)
//            yorigin - index of n=0 in vector yn (1-based)
// ============================================================
function [yn, yorigin] = delay(xn, xorigin, k)
    yn      = xn;                   // sample values unchanged
    yorigin = xorigin - k;          // origin index shifts left by k
endfunction

// ------------------------------------------------------------
// Step 1: Fold x(n) -> v(n) = x(-n)
// Step 2: Delay v(n) by 4 -> y(n) = v(n-4) = x(4-n)
// ------------------------------------------------------------
[vn, vorigin] = fold(xn, xorigin);
[yn_b, yorigin_b] = delay(vn, vorigin, 4);

// Build time axes for plotting
Nx = length(xn);
nx   = (1:Nx) - xorigin;           // time axis of x(n)
nv   = (1:Nx) - vorigin;           // time axis of v(n) = x(-n)
ny_b = (1:Nx) - yorigin_b;         // time axis of y(n) = x(4-n)

// Plot all 3 signals in one figure
scf(); clf();
subplot(3,1,1);
plot2d3(nx, xn, style=2); gce().children.thickness = 2;
plot2d(nx, xn, style=-5); gce().children.mark_foreground = 2;
xgrid(); xlabel('n'); ylabel('x(n)'); title('x(n) - Tin hieu goc');

subplot(3,1,2);
plot2d3(nv, vn, style=3); gce().children.thickness = 2;
plot2d(nv, vn, style=-5); gce().children.mark_foreground = 3;
xgrid(); xlabel('n'); ylabel('v(n)'); title('v(n) = x(-n) - Sau khi Fold');

subplot(3,1,3);
plot2d3(ny_b, yn_b, style=5); gce().children.thickness = 2;
plot2d(ny_b, yn_b, style=-5); gce().children.mark_foreground = 5;
xgrid(); xlabel('n'); ylabel('y(n)'); title('y(n) = x(4-n) - Fold roi Delay 4');

disp('yn_b =');    disp(yn_b);
disp('yorigin ='); disp(yorigin_b);
