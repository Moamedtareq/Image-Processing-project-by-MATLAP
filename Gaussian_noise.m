function [new_img] = Gaussian_noise(img,v,m)
img = double(img);
new_img = img;
[h ,w ,l] = size(img);


for i=1:255
   nom_of_pixel=round(((exp(-((i-m)^2/(2*v*v))))/(sqrt(2*3.14*v*v)))*w*h);
   for x=1:nom_of_pixel
       row=ceil(rand(1,1)*h);
       colom=ceil(rand(1,1)*w);
       img(row,colom)=img(row,colom)+i;
   
   
   end 

end
for k=1:1
    mn=min(min(img(:,:,k)));
    mx=max(min(img(:,:,k)));
    new_img(:,:,k)=((img(:,:,k)-mn)/(mx-mn))*255;

end   
new_img=uint8(new_img);
imshow(new_img)
end