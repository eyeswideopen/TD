function [ outputImg ] = convolution( inputImg, kernel, borderStrategy)
    %CONVOLUTION Summary of this function goes here
    %   Detailed explanation goes here
    
    function pix =  getPixel(x,y)
        if ~(x > 0 && y > 0)
            if strcmp(borderStrategy, 'mirror')
                if x <= 0
                    x = -x +1;
                end
                if y <= 0 
                    y = -y +1;
                end
                
            elseif strcmp(borderStrategy, 'copy')
                if x <= 0
                    x = 1;
                end
                if y <= 0 
                    y = 1;
                end
            end
        end
        pix = inputImg(x,y);
    end
    
    [height, width] = size(inputImg);
    [kernelHeight, kernelWidth] = size(kernel);
    outputImg = zeros(size(inputImg));

    halfKernelWidth = int32(kernelWidth)/int32(2)
    halfKernelHeight = int32(kernelHeight)/int32(2);
    %image
    for i = 1:size(inputImg,1)
        for j = 1:size(inputImg,2)
            %kernel
            for ki = 1:size(kernel,1)
                 for kj = 1:size(kernel,2)
                     outputImg(i,j) = outputImg(i,j) + getPixel(i+ki-halfKernelHeight, j+kj-halfKernelWidth) * kernel(ki,kj);
                end
            end
            outputImg(i,j) = outputImg(i,j) / kernelHeight*kernelHeight;
        end
    end

    

end

