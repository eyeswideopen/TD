function [ outputImg ] = convolution( inputImg, kernel, borderStrategy)
    %CONVOLUTION Summary of this function goes here
    %   Detailed explanation goes here
    outputImg = zeros(size(inputImg));
    %ignoring border rows for now
    for i = 0:size(inputImg,1)
        for j = 0:size(inputImg,2)
            outputImg(i,j) = inputImg(i,j);
        end
    end
    
end

