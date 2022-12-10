image = imread('pout.tif');

subplot(2,2,1);
imshow(image), title('Original');

subplot(2,2,2);
imhist(image);

new_image = histeq(image);

subplot(2,2,3);
imshow(new_image), title('With an aligned histogram');

subplot(2,2,4);
imhist(new_image);