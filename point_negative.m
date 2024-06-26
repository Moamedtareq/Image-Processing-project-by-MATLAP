function [ nImg ] = point_negative( img )
    nImg = img;
    [w, h, L] = size(img);
    for e = 1:L
        m = max(max(img(:,:,e)));
        for i = 1:w
            for j = 1:h
                nImg(i, j, e) = abs(m - img(i, j, e));
            end  
        end
    end
    imshow(nImg);
end

