img = imread('test', 'jpg');
%exercise 1
img = convolution(img, ones(3,3),'copy');
imshow(img)
%exercise 2
gaussian2d_sigma_1 = gaussian2d_kernel(1);
img_gaussian2d_sigma_1 = convolution(img, gaussian2d_sigma_1,'copy');
gaussian2d_sigma_3 = gaussian2d_kernel(3);
tic
img_gaussian2d_sigma_3 = convolution(img, gaussian2d_sigma_3,'copy');
toc

[gaussian1d_v_sigma_1, gaussian1d_h_sigma_1] = gaussian1d_kernel(1);
img_gaussian1d_sigma_1 = convolution(convolution(img, gaussian1d_v_sigma_1,'copy'), gaussian1d_h_sigma_1, 'copy');
[gaussian1d_v_sigma_3, gaussian1d_h_sigma_3] = gaussian1d_kernel(3);
tic
img_gaussian1d_sigma_3 = convolution(convolution(img, gaussian1d_v_sigma_3,'copy'), gaussian1d_h_sigma_3, 'copy');
toc

imshow(img_gaussian2d_sigma_1)
imshow(img_gaussian2d_sigma_3)
imshow(img_gaussian1d_sigma_1)
imshow(img_gaussian1d_sigma_3)

%exercise 3

