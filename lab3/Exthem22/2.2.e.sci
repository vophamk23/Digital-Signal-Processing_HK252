// ============================================================
// Define signal x(n) from Figure P2.2
// ============================================================
xn      = [0, 0, 1, 1, 1, 1, 0.5, 0.5, 0, 0];
xorigin = 4;                    // n=0 is at index 4

// ============================================================
// (e): x(n-1) * delta(n-3)
// Step 1: Delay x(n) by 1  ->  v(n) = x(n-1)
// Step 2: Build delta(n-3) on same axis
// Step 3: Multiply v(n) . delta(n-3)
// Result: single sample at n=3 with value x(2) = 1
// ============================================================

// Step 1: Delay x(n) by 1 -> v(n) = x(n-1)
[vn_e, vorigin_e] = delay(xn, xorigin, 1);

// Step 2: Build delta(n-3) on same axis as v(n)
nv_axis  = (1:length(vn_e)) - vorigin_e;   // time axis of v(n)
delta_n3 = double(nv_axis == 3);            // delta(n-3) = 1 only at n=3

// Step 3: Multiply v(n) . delta(n-3)
[yn_e, yorigin_e] = multi(vn_e, vorigin_e, delta_n3, vorigin_e);

// Build time axes for plotting
nx    = (1:length(xn))   - xorigin;
nv_e  = (1:length(vn_e)) - vorigin_e;
ny_e  = (1:length(yn_e)) - yorigin_e;

// Plot all signals in one figure
scf(); clf();
subplot(3,1,1);
plot2d3(nx, xn, style=2); gce().children.thickness = 2;
plot2d(nx, xn, style=-5); gce().children.mark_foreground = 2;
xgrid(); xlabel('n'); ylabel('x(n)'); title('x(n) - Tin hieu goc');

subplot(3,1,2);
plot2d3(nv_e, vn_e, style=3); gce().children.thickness = 2;
plot2d(nv_e, vn_e, style=-5); gce().children.mark_foreground = 3;
xgrid(); xlabel('n'); ylabel('x(n-1)'); title('x(n-1) - Delay 1 mau');

subplot(3,1,3);
plot2d3(ny_e, yn_e, style=5); gce().children.thickness = 2;
plot2d(ny_e, yn_e, style=-5); gce().children.mark_foreground = 5;
xgrid(); xlabel('n'); ylabel('y(n)'); title('y(n) = x(n-1).delta(n-3)');

disp('yn_e =');    disp(yn_e);
disp('yorigin ='); disp(yorigin_e);
