clc;
clear;

figure(1);
a=imread('Capture1.jpg');
%b=a;
imshow(a);
title('RGB picture');


figure(2);
a(:,:,2)=0;
a(:,:,3)=0;
imshow(a);
title('Red picture');


figure(3);
a=imread('Capture1.jpg');
a(:,:,3)=0;
a(:,:,1)=0;
imshow(a);
title('Green picture');

figure(4);
a=imread('Capture1.jpg');
a(:,:,1)=0;
a(:,:,2)=0;
imshow(a);
title('Blue picture');
%%%

figure(5);
a=imread('Capture1.jpg');
Gray=a(:,:,1)*0.299+a(:,:,2)*0.587+a(:,:,3)*0.114;
imshow(Gray);
title('Grayscale picture');
csvwrite('file.csv',Gray);

