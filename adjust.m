image = imread('pout.tif');

subplot(1,2,1);
imshow(image), title('Original');

new_image = imadjust(image);

subplot(1,2,2);
imshow(new_image), title('Adjusted image');