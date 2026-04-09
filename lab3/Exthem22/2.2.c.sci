// ============================================================
// Define signal x(n) from Figure P2.2
// ============================================================
xn      = [0, 0, 1, 1, 1, 1, 0.5, 0.5, 0, 0];
xorigin = 4;                    // n=0 is at index 4


// ============================================================
// FUNCTION : advance
// PURPOSE  : Perform advance operation y(n) = x(n + k)
// INPUTS   : xn      - sample values of input signal x(n)
//            xorigin - index of n=0 in vector xn (1-based)
//            k       - number of advance steps (k > 0)
// OUTPUTS  : yn      - sample values of output signal y(n)
//            yorigin - index of n=0 in vector yn (1-based)
// ============================================================
function [yn, yorigin] = advance(xn, xorigin, k)
    yn      = xn;                   // sample values unchanged
    yorigin = xorigin + k;          // origin index shifts right by k
endfunction

// ------------------------------------------------------------
// x(n) spans n = -3,-2,-1, 0, 1, 2, 3, 4, 5, 6
// Advance k=2: y(n) spans same vector, yorigin = 4+2 = 6
// y(n) xac dinh tai n = -3,-2,-1, 0, 1, 2 (shifted left by 2)
// ------------------------------------------------------------
[yn_c, yorigin_c] = advance(xn, xorigin, 2);

// Build time axes for plotting
nx   = (1:length(xn)) - xorigin;     // time axis of x(n)
ny_c = (1:length(yn_c)) - yorigin_c; // time axis of y(n)

// Plot both signals in one figure
scf(); clf();
subplot(2,1,1);
plot2d3(nx, xn, style=2); gce().children.thickness = 2;
plot2d(nx, xn, style=-5); gce().children.mark_foreground = 2;
xgrid(); xlabel('n'); ylabel('x(n)'); title('x(n) - Tin hieu goc');

subplot(2,1,2);
plot2d3(ny_c, yn_c, style=5); gce().children.thickness = 2;
plot2d(ny_c, yn_c, style=-5); gce().children.mark_foreground = 5;
xgrid(); xlabel('n'); ylabel('x(n+2)'); title('x(n+2) - Advance 2 mau');

disp('yn_c =');    disp(yn_c);
disp('yorigin ='); disp(yorigin_c);
