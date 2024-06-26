function [ nImg ] = histogram_equalization( img )
    [H, W, L] = size(img);
    histarr = zeros(256,L);
    nImg = img;
    for e = 1:L
        for i = 1:H
            for j = 1:W
                histarr(img(i,j,e)+1,e)=histarr(img(i,j,e)+1,e)+1;
            end
        end
    end
    
    prarr = zeros(256,L);
    prarr = double(prarr);
    
    for e = 1 : L
        for i = 1 : 256
            prarr(i,e) = histarr(i,e) / (H * W);
        end
    end
    
    sum = zeros(L);
    sum = double(sum);
    skarr = zeros(256,L);
    skarr = double(skarr);
    
    for e = 1 : L
        for i = 1 : 256
            skarr(i,e) = 255 * (prarr(i,e) + sum(e));
            sum(e) = sum(e) + prarr(i,e);
        end
    end
    
    skarr = uint8(skarr);
    
    for e = 1 : L
        for i = 1 : H
            for j = 1 : W
                nImg(i, j, e) = skarr(img(i, j, e) + 1,e);
            end
        end
    end
    
    imshow(nImg);
end