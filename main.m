img = imread('test', 'tif');
img = convolution(img,[1,1,1;1,1,1;1,1,1],1);
image(img)