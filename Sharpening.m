function [ nImg ] = Sharpening( img, op )
    
    img=Rgb2gray(img,4);
    if op == 1
        %point in sharp
        mask=[0 -1 0,-1 5 -1,0-1 0];
    elseif op == 2
        %horizontal in sharp
        mask=[0 0 0,1 1 -1,0 0 0];
    elseif op == 3
        %vertical in sharp
        mask=[0 1 0,0 1 0,0 -1 0];
    elseif op == 4
        %DL in sharp
        mask=[0 0 0,0 1 0,-1 0 0];
    elseif op == 5
        %DR in sharp
        mask=[1 0 0,-1 5 -1,0 -1 0];
    end
    nImg=filter2(mask,img);
    nImg = uint8(nImg);
    imshow(nImg);
    
end