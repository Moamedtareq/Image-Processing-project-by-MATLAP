function [ nImg ] = point_contrast( img, newMin , newMax )
    [H, W, L] = size(img);
    nImg = zeros(H,W,L);
    img = double(img);
    nImg = double(nImg);
    for e = 1:L
        oldMax = max(max(img(:,:,e)));
        oldMin = min(min(img(:,:,e)));
        for i=1:H
            for j=1:W
                nImg(i,j,e)= (((img(i,j,e)-oldMin) / (oldMax-oldMin)) * (newMax-newMin))+newMin;
            end
        end
    end
    nImg = uint8(nImg);
    imshow(nImg);
end