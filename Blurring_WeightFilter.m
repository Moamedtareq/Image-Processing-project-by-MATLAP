function [ nImg ] = Blurring_WeightFilter( img )
    ag = fspecial('average',[5,5]);
    nImg = imfilter(img, ag);
    imshow(nImg);
end

