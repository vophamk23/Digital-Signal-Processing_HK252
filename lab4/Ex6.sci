// Folding and Shifting
function [y, ny] = my_conv_shift(x, nx, h, nh)
    // nx, nh là trục thời gian của x và h
    ny_start = min(nx) + min(nh);
    ny_end = max(nx) + max(nh);
    ny = ny_start:ny_end; // ny là trục thời gian của kết quả y
    
    y = zeros(1, length(ny));
    
    for i = 1:length(ny)
        n = ny(i);
        // Với mỗi n, tính tổng h(k)*x(n-k)
        for k_idx = 1:length(h)
            k = nh(k_idx);
            // Tìm giá trị x(n-k)
            x_idx = find(nx == (n - k));
            if ~isempty(x_idx) then
                y(i) = y(i) + h(k_idx) * x(x_idx);
            end
        end
    end
endfunction

// Matrix
function [y, ny] = my_conv_matrix(x, nx, h, nh)
    ny_start = min(nx) + min(nh);
    ny_end = max(nx) + max(nh);
    ny = ny_start:ny_end;
    
    L = length(x);
    M = length(h);
    N = L + M - 1;
    
    // Khởi tạo ma trận
    X = zeros(N, M);
    for i = 1:M
        X(i : i + L - 1, i) = x';
    end
    
    // y = X * h'
    y = X * h';
    y = y'; // Chuyển về vector hàng
endfunction

// Thực thi
x = [1, 2, -3, 2, 1]; nx = 0:4;
h = [1, 0, -1]; nh = 0:2;

// Tính toán
[y1, ny1] = my_conv_shift(x, nx, h, nh);
[y2, ny2] = my_conv_matrix(x, nx, h, nh);
Ex = x.^2;
Ey = y1.^2;

// Vẽ đồ thị
clf();
subplot(3, 2, 1); plot2d3(nx, x); plot(nx, x, "ro"); title("Input x(n)"); xgrid();
subplot(3, 2, 2); plot2d3(ny1, y1); plot(ny1, y1, "bo"); title("Convolution y(n) - Folding and Shifting"); xgrid();
subplot(3, 2, 4); plot2d3(ny2, y2); plot(ny2, y2, "go"); title("Convolution y(n) - Matrix"); xgrid();

// Vẽ năng lượng của cả 3 tín hiệu để so sánh
subplot(3, 2, 3);
plot(nx, Ex, "r-o"); 
plot(ny1, Ey, "b-o");
hl = legend(["Ex", "Ey"]);
title("Energy of Discrete signals"); xgrid();
