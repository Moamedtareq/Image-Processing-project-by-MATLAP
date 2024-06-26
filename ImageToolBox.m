k= menu ('Image Tool Box' , 'Image Conversion', 'Point Operations','Neighborhood Operations','Histogram','Frequency Domain','Exit');
while k ~= 6
    switch k
        case 1
            i= menu ('Image Conversion' , 'RGB To Gray','Gray To RGB','Gray To Binary','Index To RGB','Index To Gray','Back');

            while i~=6
                switch i
                    case 1


                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);
                        option= str2double(getfield((inputdlg('Please enter the option','Input Dialog')),{1}));
                        newimge = Rgb2gray(oldimge,option);

                    case 2
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);
                        newimge = Gray2rgb(oldimge);

                    case 3
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);
                        threshould= str2double(getfield((inputdlg('Please enter the threshould value','Input Dialog')),{1}));
                        newimge = gray2binary(oldimge,threshould);

                    case 4
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        [oldimge, map] = imread([pathname filename]);
                        newimge = ind2rgb(oldimge,map);
                        imshow(newimge);

                    case 5
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        [oldimge, map] = imread([pathname filename]);
                        imge_rgb = ind2rgb(oldimge,map);
                        newimge = rgb2gray(imge_rgb);
                        imshow(newimge);

                end
                i= menu ('Image Conversion' , 'RGB To Gray','Gray To RGB','Gray To Binary','Index To RGB','Index To Gray','Back');
            end


        case 2
            i= menu ('Point Operations' , 'Brightness','Contrast','Gamma Correction','Negative','Back');

            while i~=5
                switch i
                    case 1
                        [ filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimg = imread([pathname filename]);
                        offset = str2double(getfield((inputdlg('Please enter the offset value','Input Dialog')),{1}));
                        option = str2double(getfield((inputdlg('Please enter the offset value','Input Dialog')),{1}));
                        newimg = point_brightness(oldimg,offset,option);

                    case 2
                        [ filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimg = imread([pathname filename]);
                        NewMin= str2double(getfield((inputdlg('Please enter the NewMin value','Input Dialog')),{1}));
                        NewMax= str2double(getfield((inputdlg('Please enter the NewMax value','Input Dialog')),{1}));
                        newimg = point_contrast(oldimg,NewMin,NewMax);

                    case 3
                        [ filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimg = imread([pathname filename]);
                        gamma= str2double(getfield((inputdlg('Please enter the Gamma value','Input Dialog')),{1}));
                        newimg = point_gamma_correction(oldimg,gamma);


                    case 4
                        [ filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimg = imread([pathname filename]);
                        newimg = point_negative(oldimg);

                end
                i= menu ('Point Operations' , 'Brightness','Contrast','Gamma Correction','Negative','Back');
            end


        case 3

            i= menu ('Neighborhood Operations' , 'Bluring', 'Detection', 'Sharpening', 'Back');

            while i~=4

                switch i

                    case 1

                        j= menu ('Bluring Filters' , 'Bluring Mean Filter','Bluring Weight Filter', 'Back');

                        while j~=3

                            switch j

                                case 1
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    newimg = Blurring_MeanFilter(oldimg);

                                case 2
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    newimg = Blurring_WeightFilter(oldimg);

                               
                            end
                            j= menu ('Bluring Filters' , 'Bluring Mean Filter','Bluring Weight Filter', 'Back');
                        end


                    case 2

                        j= menu ('Detection Filters' , 'Point Detection','Vertical Detection','Horizontal Detection','Diagnoal left Detection','Diagonal right Detection','Back');

                        while j~=6

                            switch j

                                case 1
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    newimg = EdgeDetection(oldimg,1);

                                case 2
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    newimg = EdgeDetection(oldimg,3);

                                case 3
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    newimg = EdgeDetection(oldimg,2);

                                case 4
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    newimg = EdgeDetection(oldimg,4);

                                case 5
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    newimg = EdgeDetection(oldimg,5);

                            end
                            j= menu ('Detection Filters' , 'Point Detection','Vertical Detection','Horizontal Detection','Diagnoal left Detection','Diagonal right Detection','Back');
                        end

                    case 3


                        j= menu ('Sharpening Filters' , 'Point Sharpening','Vertical Sharpening','Horizontal Sharpening','Diagnoal left Sharpening','Diagonal right Sharpening','Back');

                        while j~=6

                            switch j

                                case 1
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    newimg = Sharpening(oldimg,1);

                                case 2
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    newimg = Sharpening(oldimg,3);

                                case 3
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    newimg = Sharpening(oldimg,2);

                                case 4
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    newimg = Sharpening(oldimg,4);

                                case 5
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    newimg = Sharpening(oldimg,5);

                            end
                            j= menu ('Detection Filters' , 'Point Sharpening','Vertical Sharpening','Horizontal Sharpening','Diagnoal left Sharpening','Diagonal right Sharpening','Back');
                        end


                end
                i= menu ('Neighborhood Operations' , 'Bluring','Detection','Sharpening','Back');
            end



        case 4

            i= menu ('Histogram' , 'Image Histogram','Histogram Equalization','Back');

            while i~=3
                switch i
                    case 1
                        [ filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimg = imread([pathname filename]);
                        histogram(oldimg);

                    case 2
                        [ filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimg = imread([pathname filename]);
                        newimg = histogram_equalization(oldimg);


                end
                i= menu ('Histogram' , 'Image Histogram','Histogram Equalization','Back');
            end


        case 5
            i= menu ('Frequency Domain' , 'Ideal Lowpass Filter','Ideal Highpass Filter','Butterworth Lowpass Filter','Butterworth Highpass Filter','Gaussian Lowpass Filter','Gaussian Highpass Filte','Back');

            while i~=7
                switch i
                    case 1


                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);
                        d= str2double(getfield((inputdlg('Please enter the diastance value','Input Dialog')),{1}));
                        newimge = fDF_IPF(oldimge,d,0);


                    case 2
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);
                        d= str2double(getfield((inputdlg('Please enter the diastance value','Input Dialog')),{1}));
                        newimge = fDF_IPF(oldimge,d,1);

                    case 3

                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);
                        d= str2double(getfield((inputdlg('Please enter the diastance value','Input Dialog')),{1}));
                        n= str2double(getfield((inputdlg('Please enter the order of filter ','Input Dialog')),{1}));
                        newimge = fDF_BPF(oldimge,d,n,0);


                    case 4


                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);
                        d= str2double(getfield((inputdlg('Please enter the diastance value','Input Dialog')),{1}));
                        n= str2double(getfield((inputdlg('Please enter the order of filter ','Input Dialog')),{1}));
                        newimge = fDF_BPF(oldimge,d,n,1);


                    case 5

                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);
                        d= str2double(getfield((inputdlg('Please enter the diastance value','Input Dialog')),{1}));
                        newimge = fDF_GPF(oldimge,d,0);


                    case 6
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);
                        d= str2double(getfield((inputdlg('Please enter the diastance value','Input Dialog')),{1}));
                        newimge = fDF_GPF(oldimge,d,1);



                end

                i= menu ('Frequency Domain' , 'Ideal Lowpass Filter','Ideal Highpass Filter','Butterworth Lowpass Filter','Butterworth Highpass Filter','Gaussian Lowpass Filter','Gaussian Highpass Filte','Back');


            end
            
    end
    
            k= menu ('Image Tool Box' , 'Image Conversion', 'Point Operations','Neighborhood Operations','Histogram','Frequency Domain','Exit');
end