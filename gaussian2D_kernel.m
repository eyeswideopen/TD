function gauss2d_kernel = gaussian2D_kernel(sigma)

kernel_size = 3 * sigma;
bounds = floor(kernel_size / 2);

[gridCoord_x, gridCoord_y] = meshgrid(-bounds : bounds, -bounds : bounds);
gauss2d_kernel = 1 / (2 * pi * sigma^2) .* exp(-((gridCoord_x .* gridCoord_x) + (gridCoord_y .* gridCoord_y)) / (2 * sigma^2));

 %normalization, sum(sum()) because 2d.
 if sum(sum(gauss2d_kernel)) ~= 0
    gauss2d_kernel = gauss2d_kernel ./ sum(sum(gauss2d_kernel));
 end
 
end
