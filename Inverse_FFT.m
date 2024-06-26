function [ ifft ] = Inverse_FFT( fft )
    
    [H, W] = size(fft);
    ifft = fft;
    for x = 1 : H
        for j = 1 : W
            fiSum = 0;
            for k = 1 : H
                for l = 1 : W
                    fiSum = fiSum + (fft(k, l)*exp(2*pi*i*((x*k / H) + (j*l / W))));
                end
            end
            ifft(x, j) = (1 / (H * W)) * fiSum;
        end
    end
    disp('ifft=')
    disp(ifft)
end
