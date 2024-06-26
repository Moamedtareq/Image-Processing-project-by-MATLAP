function  [ rgb ] = Gray2rgb( gray )

    [H, W]=size(gray);
    rgb=zeros(H,W,3);
    c=uint8(255*colormap('jet'));
    for i = 1:H
        for j = 1:W
            pixel = double(gray(i,j));
            colormap_row = ceil(pixel*64/255);
            red = c(colormap_row,1);
            green = c(colormap_row,2);
            blue = c(colormap_row,3);
            rgb(i,j,1) = red;
            rgb(i,j,2) = green;
            rgb(i,j,3) = blue;
        end
    end
    rgb=uint8(rgb);
    figure, imshow(rgb);
end

