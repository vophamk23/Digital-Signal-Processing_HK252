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
    
    Nx = length(xn);
    nx = (1:Nx) - xorigin;          // time axis of x(n)
    ny = (1:Nx) - yorigin;          // time axis of y(n)
    
    scf(); clf();
    // Plot x(n) - original signal
    subplot(2,1,1);
    plot2d3(nx, xn, style=2); gce().children.thickness = 2;
    plot2d(nx, xn, style=-5); gce().children.mark_foreground = 2;
    xgrid(); xlabel('n'); ylabel('x(n)'); title('x(n) - Tin hieu goc');
    // Plot y(n) - advanced signal
    subplot(2,1,2);
    plot2d3(ny, yn, style=5); gce().children.thickness = 2;
    plot2d(ny, yn, style=-5); gce().children.mark_foreground = 5;
    xgrid(); xlabel('n'); ylabel('y(n)');
    title('y(n) = x(n + ' + string(k) + ')');
endfunction

// ------------------------------------------------------------
// Example: x(n) = {1, -2^, 3, 6, 2}, xorigin = 2, k = 1
// x(n) spans n = -1, 0, 1, 2, 3
// y(n) spans n = -2,-1, 0, 1, 2  (shifted left by 1)
// Result: yn = [1, -2, 3, 6, 2],  yorigin = 3
// ------------------------------------------------------------
[yn, yorigin] = advance([1,-2,3,6,2], 2, 1);
disp('yn ='); disp(yn);
disp('yorigin ='); disp(yorigin);
