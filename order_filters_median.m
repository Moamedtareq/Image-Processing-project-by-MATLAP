function [ ] = order_filters_median( img )
    figure, imshow(img)
    J = imnoise(img,'salt & pepper',0.02);
    K = medfilt2(J);
    imshowpair(J,K,'montage')
end