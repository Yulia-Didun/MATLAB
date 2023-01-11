image = imread('cell.tif');
level = 130;
[n,m] = size(image);

bw_img = zeros(n,m);

for i = 1:n
    for j = 1:m
        if image(i,j) >= level
            bw_img(i,j) = 1;
        elseif image(i,j) < level
            bw_img(i,j) = 0;
        end
    end
end

subplot(1,2,1);
imshow(image), title('Original');
subplot(1,2,2);
imshow(bw_img), title('Binary');