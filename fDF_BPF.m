function [ nImg ] = fDF_BPF( img, d0, n, index )
    [H, W, L] = size(img);
    filter = zeros(H, W, L);
    for j= 1:H
        for k= 1:W
            dis = sqrt((j - (H/2)).^2 + (k - (W/2)).^2); 
            filter(j, k) = 1 / (1 + (dis / d0).^(2*n));
        end
    end
    if index ~= 0
        filter = 1 - filter;
    end

    fi=fft2(img);
    fi=fftshift(fi);
    reall=real(fi);
    imagin=imag(fi);
    nreall=filter.*reall;
    nimagin=filter.*imagin;
    nImg=nreall(:,:)+i*nimagin(:,:);
    nImg=fftshift(nImg);
    nImg=ifft2(nImg);
    nImg=mat2gray((abs(nImg)));
    imshow(nImg);
end