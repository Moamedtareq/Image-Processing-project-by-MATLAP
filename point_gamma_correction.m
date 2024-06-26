 function [ newImg ] = point_gamma_correction( img, gamma )
     [H, W] = size(img);
     img = double(img);
     newImg = abs((1*img).^gamma);
     
     immin = min(newImg(:));
     immax = max(newImg(:));
     for i=1:H
         for j=1:W
             newImg(i,j) = double(255 * newImg(i,j)) / (immax-immin);
         end
     end
    newImg=uint8(newImg);
    imshow(newImg);
end
