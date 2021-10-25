%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              Question 6(c)                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear
close all

N = 200;
w = -pi:pi/N:pi;
n_1 = 0:2:1000;
Y_z = DTFT(0.9.^(n_1/2).*cos(pi*n_1/8),n_1,w);
n = 0:1:1000;
X_z2 = DTFT(0.9.^n.*cos(pi*n/4),2*n,w);

% X(z^2) plot against Y(z) for verification

subplot(2,1,1);
plot(w,real(X_z2));

subplot(2,1,2);
plot(w,real(Y_z));

function [X] = DTFT(x,n,w ) 
    X = x*exp(-1i*n'*w);
end