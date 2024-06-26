function [ nImg ] = Blurring_MeanFilter( img )
    nImg = img;
    [H ,W ,L] = size(img);
    for k = 1:L
        for i = 1:H
            for j = 1:W
                rmin = max(1, i-1);
                rmax = min(H, i+1);
                cmin = max(1, j-1);
                cmax = min(W, j+1);
                
                temp = img(rmin:rmax, cmin:cmax, k);
                
                nImg(i, j, k) = mean(temp(:));
            end
        end
    end
    %nImg = nuit8 (nImg);
    imshow(nImg);
end

