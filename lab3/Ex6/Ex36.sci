// ============================================================
// FUNCTION : convolution
// PURPOSE  : Perform linear convolution y(n) = x(n) * h(n)
// INPUTS   : xn      - sample values of input signal x(n)
//            xorigin - index of n=0 in vector xn (1-based)
//            hn      - sample values of impulse response h(n)
//            horigin - index of n=0 in vector hn (1-based)
// OUTPUTS  : yn      - sample values of output signal y(n)
//            yorigin - index of n=0 in vector yn (1-based)
// NOTE     : Output length = length(xn) + length(hn) - 1
// ============================================================
function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    Nx = length(xn);
    Nh = length(hn);

    yn = conv(xn, hn);                          // built-in convolution

    ny_start = (1 - xorigin) + (1 - horigin);  // first n-index of y(n)
    ny = ny_start : (ny_start + Nx + Nh - 2);  // time axis of y(n)
    yorigin = xorigin + horigin - 1;            // origin of y(n)

    nx = (1:Nx) - xorigin;                      // time axis of x(n)
    nh = (1:Nh) - horigin;                      // time axis of h(n)

    scf(); clf();
    // Plot x(n) - input signal
    subplot(3,1,1);
    plot2d3(nx, xn, style=2); gce().children.thickness = 2;
    plot2d(nx, xn, style=-5); gce().children.mark_foreground = 2;
    xgrid(); xlabel('n'); ylabel('x(n)'); title('x(n) - Tin hieu vao');
    
    // Plot h(n) - impulse response
    subplot(3,1,2);
    plot2d3(nh, hn, style=3); gce().children.thickness = 2;
    plot2d(nh, hn, style=-5); gce().children.mark_foreground = 3;
    xgrid(); xlabel('n'); ylabel('h(n)'); title('h(n) - Dap ung xung');
    
    // Plot y(n) = x(n) * h(n)
    subplot(3,1,3);
    plot2d3(ny, yn, style=5); gce().children.thickness = 2;
    plot2d(ny, yn, style=-5); gce().children.mark_foreground = 5;
    xgrid(); xlabel('n'); ylabel('y(n)'); title('y(n) = x(n) * h(n)');
endfunction

// ------------------------------------------------------------
// Example: x(n) = {1^, 2, 3, 1}, xorigin = 1
//          h(n) = {1^, 2, 1},    horigin = 1
// Result : yn = [1, 4, 8, 9, 5, 1],  yorigin = 1
// ------------------------------------------------------------
[yn, yorigin] = convolution([2,-2,1,-1], 2, [1,-1,2,1, 3], 1);
disp('yn ='); disp(yn);
disp('yorigin ='); disp(yorigin);
