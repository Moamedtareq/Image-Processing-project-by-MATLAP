function [ histarr ] = histogram( img)
    [H, W, L]=size(img);
    histarr=zeros(256,L);
    for e = 1:L
        for i = 1:H
            for j = 1:W
                histarr(img(i,j,e)+1,e)=histarr(img(i,j,e)+1,e)+1;
            end
        end
    end
    for i=1:L
        figure, bar(histarr(:,i));
    end
end

