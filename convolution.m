function [ outputImg ] = convolution( inputImg, kernel, borderStrategy)
    %CONVOLUTION Summary of this function goes here
    %   Detailed explanation goes here

size(inputImg,1)

    outputImg = zeros(size(inputImg));
    %ignoring border rows for now
    for i = 2:size(inputImg,1)-2
        for j = 2:size(inputImg,2)-2
            outputImg(i,j) = inputImg(i,j);
        end
    end
    
end

