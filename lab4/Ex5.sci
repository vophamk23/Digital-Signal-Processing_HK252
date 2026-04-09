// Bước 1: Tạo ảnh xám tổng hợp thay thế imread
img = zeros(128, 128);
for i = 1:128
    for j = 1:128
        img(i, j) = modulo(i * j, 256);
    end
end

// Bước 2: Áp dụng bộ lọc làm mờ trung bình 3x3 thay thế blur()
r = 1;
img_blur = zeros(128, 128);
for i = 1:128
    for j = 1:128
        total = 0; count = 0;
        for di = -r:r
            for dj = -r:r
                ni = i + di; nj = j + dj;
                if ni >= 1 & ni <= 128 & nj >= 1 & nj <= 128 then
                    total = total + img(ni, nj);
                    count = count + 1;
                end
            end
        end
        img_blur(i, j) = total / count;
    end
end

// Bước 3: Thiết lập colormap xám thay thế imshow()
clf();
gcf().color_map = [(0:255)'/255, (0:255)'/255, (0:255)'/255];

// Bước 4: Hiển thị so sánh trước và sau làm mờ
x = 1:128; y = 1:128;
subplot(1, 2, 1);
grayplot(x, y, img');
xtitle('Anh goc');

subplot(1, 2, 2);
grayplot(x, y, img_blur');
xtitle('Anh sau khi lam mo (kernel 3x3)');

// Bước 5: Lưu ảnh ra file thay thế imwrite()
fpng = 'C:\Users\ASUS\Downloads\image_blur.png';
xs2png(0, fpng);
disp('Da luu anh tai: ' + fpng);
