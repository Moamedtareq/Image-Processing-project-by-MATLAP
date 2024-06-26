function [ nImg ] = order_filters_max( img )
    title('Input Image');
    x=rand(size(img));
    img(x(:)<0.05)=0;
    figure;
    imshow(img);
    sto=[];
    [a b]=size(img);
    nImg=zeros(a,b);
    for i=2:a-1
        for j=2:b-1
            sto=[img(i-1,j-1),img(i-1,j),img(i-1,j+1),img(i,j-1),img(i,j)...
                ,img(i,j+1),img(i+1,j-1),img(i+1,j),img(i+1,j+1)];
            es=max(sto);
                nImg(i,j)=es;
            sto=[];
        end
    end
    figure;
    imshow(uint8(nImg));
end