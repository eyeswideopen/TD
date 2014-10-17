img = imread('test', 'jpg');
img = convolution(img, ones(3,3),'copy');
imshow(img)
