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

    nx = (1:Nx) - xorigin;          // time axis of x(n)
    ny = (1:Nx) - yorigin;          // time axis of y(n)

    scf(); clf();
    
    // Plot x(n) - original signal
    subplot(2,1,1);
    plot2d3(nx, xn, style=2); gce().children.thickness = 2;
    plot2d(nx, xn, style=-5); gce().children.mark_foreground = 2;
    xgrid(); xlabel('n'); ylabel('x(n)'); title('x(n) - Tin hieu goc');
    
    // Plot y(n) - folded signal
    subplot(2,1,2);
    plot2d3(ny, yn, style=5); gce().children.thickness = 2;
    plot2d(ny, yn, style=-5); gce().children.mark_foreground = 5;
    xgrid(); xlabel('n'); ylabel('y(n)'); title('y(n) = x(-n)');
endfunction

// ------------------------------------------------------------
// Example: x(n) = {1, -2, 3^, 6, 4,-3}, xorigin = 3
// Result: yn = [-3, 4, 6, 3, -2, 1],  yorigin = 4
// ------------------------------------------------------------
[yn, yorigin] = fold([1,-2,3,6,4,-3], 3);
disp('yn ='); disp(yn);
disp('yorigin ='); disp(yorigin);
