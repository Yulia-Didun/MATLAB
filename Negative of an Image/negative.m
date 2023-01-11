image=imread('street.jpg');
subplot(1,2,1);
imshow(image), title('Original');

image_negative=256-image;

subplot(1,2,2);
imshow(image_negative), title('Negative');
