function [ cont ] = Log_exp(img,option )
cont=img;
    [H, W, L]=size(img);
    log_rgb=zeros(H,W);
    log_gray=zeros(H,W);
    img=double(img);
     for i=1:H
             for j=1:W
                 if option==1
                     if L==3
                         log_rgb(i,j,1)=log((img(i,j,1))+1);
                         log_rgb(i,j,2)=log((img(i,j,2))+1);
                         log_rgb(i,j,3)=log((img(i,j,3))+1);
                     else
                        log_gray(i,j)=log((img(i,j))+1);
                     end
                 end
                 if option==2
                     if L==3
                         log_rgb(i,j,1)=exp(img(i,j,1)+1);
                         log_rgb(i,j,2)=exp(img(i,j,2)+1);
                         log_rgb(i,j,3)=exp(img(i,j,3));
                     else
                 log_gray(i,j)=exp((img(i,j)));
                     end
                 end
             end
     end
        log_rgb=uint8(log_rgb);
        if L==3
            figure,imshow(log_rgb);
        end
         if L==1
             log_gray=uint8(log_gray);
            figure,imshow(log_gray);
        end   

end

