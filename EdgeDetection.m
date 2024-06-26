function [ nImg ] = EdgeDetection( img, op )
    img=Rgb2gray(img,4);
    
    if op == 1
        %point in edge detection
        mask = [-1 -1 -1,-1 8 -1,-1 -1 -1];
    elseif op == 2
        %horzintal in edge detection
        mask = [-1 -2 -1,0 0 0 ,1 2 1];
    elseif op == 3
        %vertical in edge detection
        mask = [-1 0 1,-2 0 2,-1 0 1];
    elseif op == 4
        %DL in edge detection
        mask = [0 -1 -2,1 0 -1,2 1 0];
    elseif op == 5
        %DR in edge detection
        mask = [-2 -1 0,-1 0 1,0 1 2];
    end
    nImg=filter2(mask,img);
    nImg = uint8(nImg);
    imshow(nImg);
    
end