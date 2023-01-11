% implementation through loops

image = imread('circuit.tif');
subplot(1,2,1);
imshow(image), title('Original');

if size(image,3) == 1
    [n,m] = size(image);
    for i = 1:n
        for j = 1:m
            image_negative(i,j) = 255 - image(i,j);
        end
    end
    subplot(1,2,2);
    imshow(image_negative), title('Negative');

elseif size(image,3) == 3
    [n,m,p] = size(image);
    for i = 1:n
        for j = 1:m
            for k = 1:p
                image_negative(i,j,k) = 255 - image(i,j,k);
            end
        end
    end
    subplot(1,2,2);
    imshow(image_negative), title('Negative');
end


% works good for grayscale images, but too slow for rgb

