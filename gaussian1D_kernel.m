function [gauss1d_vertical_kernel, gauss1d_horizontal_kernel]= gaussian1D_kernel(sigma)

kernel_size = 3 * sigma;
bounds = floor(kernel_size / 2);

[vertical_gridCoord_x, vertical_gridCoord_y] = meshgrid(0, -bounds : bounds);
gauss1d_vertical_kernel = sqrt(1 / (2 * pi * sigma^2)) .* exp(-((vertical_gridCoord_x .* vertical_gridCoord_x) + (vertical_gridCoord_y .* vertical_gridCoord_y)) / (2 * sigma^2));
[horizontal_gridCoord_x, horizontal_gridCoord_y] = meshgrid(-bounds : bounds, 0); 
gauss1d_horizontal_kernel = sqrt(1 / (2 * pi * sigma^2)) .* exp(-((horizontal_gridCoord_x .* horizontal_gridCoord_x) + (horizontal_gridCoord_y .* horizontal_gridCoord_y)) / (2 * sigma^2));

%  normalization for vertical 1d
if sum(gauss1d_vertical_kernel) ~= 0,
    gauss1d_vertical_kernel = gauss1d_vertical_kernel ./ sum(gauss1d_vertical_kernel);
end;

%  normalization for horizontal 1d
if sum(gauss1d_horizontal_kernel) ~= 0,
    gauss1d_horizontal_kernel = gauss1d_horizontal_kernel ./ sum(gauss1d_horizontal_kernel);
end;
 
end
