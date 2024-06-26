function [ binary ] = gray2binary ( gray,threashold )
    [H, W]=size(gray);
    binary=gray;
    for i=1:H
        for j=1:W
            if gray(i, j)>threashold
                binary(i,j)=1;
            end
            if gray(i, j)<=threashold
                binary(i,j)=0;

            end
        end
    end

    binary=logical(binary);
    imshow(binary);
end

