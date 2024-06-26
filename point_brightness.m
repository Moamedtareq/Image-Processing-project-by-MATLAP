function [ bright ] = point_brightness( img ,value,op )
    bright = img;
[w, h, L] = size(img);
    if op == 1
        for e=1:L
           for i = 1:w
              for j = 1:h
                 if img(i, j,e) + value > 255
                    bright(i, j,e) = 255;
                 else
                    bright(i, j,e) = img(i, j,e) + value;
                 end
              end  
           end 
        end
        
    elseif op == 2
        for e = 1:L
            for i = 1:w
                for j = 1:h
                    if img(i, j,e) - value < 0
                        bright(i, j,e) = 0;
                    else
                        bright(i, j,e) = img(i, j,e) - value;
                    end
                end
            end
        end

    elseif op == 3
        for e = 1:L
            for i = 1:w
                for j = 1:h
                    if img(i, j,e) * value > 255
                        bright(i, j,e) = 255;
                    else 
                        bright(i, j,e) = img(i, j,e) * value;
                    end
                end
            end  
        end

    elseif op == 4
        for e = 1:L
            for i = 1:w
                for j=1:h
                    bright(i, j,e) = (img(i, j,e) / value);
                end
            end  
        end
    end
    imshow(bright);
end

