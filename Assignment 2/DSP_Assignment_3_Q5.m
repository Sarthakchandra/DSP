%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                Question 5                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear
close all 
n = 0:1:19;
w=-pi:0.1:pi;
x_n = exp(0.1*pi*n*1j);
r_x = real(x_n);
i_x = imag(x_n);
 
X_e = 1/2 * ( DTFT(x_n, n , w) + conj(DTFT(x_n, n, -w)) );
X_o = 1/2 * ( DTFT(x_n, n , w) - conj(DTFT(x_n, n, -w)) );

DTFT_realx = DTFT(r_x, n , w);
DTFT_imagx = DTFT(1j*i_x, n , w);
figure;
subplot(4,2,1);
plot(abs(DTFT_realx));
title('Real Part of Original Signal Magnitude Plot');
subplot(4,2,2);
plot(abs(X_e));
title('Xe Magnitude');
subplot(4,2,3);
plot(angle(DTFT_realx));
title('Real Part of Orignal Signal Angle Plot');
subplot(4,2,4);
plot(angle(X_e));
title('Xe Angle');
subplot(4,2,5);
plot(abs(DTFT_imagx));
title('Imaginary part of Orignal Signal Magnitude Plot');
subplot(4,2,6);
plot(abs(X_o));
title('Xo Magnitude');
subplot(4,2,7);
plot(angle(DTFT_imagx));
title('Imaginary part of Orignal Signal Angle Plot');
subplot(4,2,8);
plot(angle(X_o));
title('Xo Angle');
% Defining Function for calculating DTFT
function [X] = DTFT(x,n,w ) 
    X = x*exp(-1j*n'*w);
end