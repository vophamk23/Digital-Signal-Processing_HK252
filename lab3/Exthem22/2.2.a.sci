// ============================================================
// Define signal x(n) from Figure P2.2
// x(n) spans n = -1..4, padded with zeros for plotting
// xorigin: index of n=0 in vector xn (1-based)
// ============================================================
xn      = [0, 0, 1, 1, 1, 1, 0.5, 0.5, 0, 0];  // sample values
xorigin = 4;                    // n=0 is at index 4

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
    Nx = length(xn);
    nx = (1:Nx) - xorigin;          // time axis of x(n)
    ny = (1:Nx) - yorigin;          // time axis of y(n)
    scf(); clf();

    // Plot x(n) - original signal
    subplot(2,1,1);
    plot2d3(nx, xn, style=2); gce().children.thickness = 2;
    plot2d(nx, xn, style=-5); gce().children.mark_foreground = 2;
    xgrid(); xlabel('n'); ylabel('x(n)'); title('x(n) - Tin hieu goc');
    // Plot y(n) - delayed signal
    subplot(2,1,2);
    plot2d3(ny, yn, style=5); gce().children.thickness = 2;
    plot2d(ny, yn, style=-5); gce().children.mark_foreground = 5;
    xgrid(); xlabel('n'); ylabel('y(n)');
    title('y(n) = x(n - ' + string(k) + ')');
endfunction
// ------------------------------------------------------------
// x(n) spans n = -3,-2,-1, 0, 1, 2, 3, 4, 5, 6
// xorigin = 4  (n=0 at index 4)
// Delay k=2: y(n) spans same vector, yorigin = 4-2 = 2
// y(n) xac dinh tai n = -1,0,1,2,3,4 -> dich phai 2 buoc
// Result: yn = xn,  yorigin = 2
// ------------------------------------------------------------
[yn, yorigin] = delay(xn, xorigin, 2);
disp('yn =');    disp(yn);
disp('yorigin ='); disp(yorigin);
