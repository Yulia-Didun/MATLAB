image=imread('street.jpg');

image_inc=imcomplement(image);

subplot(1,2,1);
imshow(image), title('Original');

subplot(1,2,2);
imshow(image_inc), title('Negative');
