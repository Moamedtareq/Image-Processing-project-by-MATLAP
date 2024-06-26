function [ fi ] = Fourier_transfrom( img )
    
    [H, W] = size(img);
    fi = img;
    for x = 1 : H
        for j = 1 : W
            fiSum = 0;
            for k = 1 : H
                for l = 1 : W
                    fiSum = fiSum + (img(k, l)*exp((-44 / 7)*i*((x*k / H) + (j*l / W))));
                end
            end
            fi(x, j) = fiSum;
        end
    end
end