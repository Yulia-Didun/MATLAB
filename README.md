## General information

Some basic image processing examples with MATLAB.

## Content
* [histeq()](#histeq)
* [imadjust()](#imadjust)
* [The Negative of an Image](#negative)

## histeq()  <a name="histeq"></a>

[Enhance contrast](hist_equalization.m 'histogram aligment') using histogram equalization. Input: grayscale image. Output: adjusted image.

<img src='https://user-images.githubusercontent.com/102674126/206872575-7e59bf51-60af-48cb-b809-eb42a8d75adc.png' alt='histeq()' width="680"/>

## imadjust()  <a name="imadjust"></a>

[Adjust image intensity values.](adjust.m 'adjust')

<img src='https://user-images.githubusercontent.com/102674126/206882090-da646592-0f29-442c-805f-2d6fe150bd93.png' alt='imadjust()' width="680"/>

## Negative of an Image  <a name="negative"></a>

### [Get the negative of an image](negative.m 'negative')

Finding the negative of an image by changing the intensity levels of the pixels present in the image.

<p float="left">
  <img src="https://user-images.githubusercontent.com/102674126/209453378-875a85a8-2d89-42bb-a29a-10c3ffa40412.png" height="290" />
  <img src="https://user-images.githubusercontent.com/102674126/209453497-a123d3ec-fa3d-477b-8942-70a167a1e12f.png" height="290" /> 
</p>

### [Get the negative of an image using loops](negative_loops.m 'negative')

Checks if image is either grayscale or RGB, and depends on statement choose loop. Works good on grayscale images but slow on RGB.
#### Grayscale:
```
if size(image,3) == 1
    [n,m] = size(image);
    for i = 1:n
        for j = 1:m
            image_negative(i,j) = 255 - image(i,j);
        end
    end
    subplot(1,2,2);
    imshow(image_negative), title('Negative');
```
#### RGB:
```
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
```

### [Complement image](imcomplement_image.m 'complement')
We can also get the negative of an image using MATLAB's built-in function <b>imcomplement()</b>. It subtracts the pixel value from the maximum pixel value of the image class.
