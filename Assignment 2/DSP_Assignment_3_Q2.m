%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                Question 2                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear
close all

w=0:0.001:pi;

% 1st part
% Defining N according to unit step limits
n_1=-2:1:10;
% Calculating DTFT
y_1=DTFT(2*(0.5.^n_1),n_1,w);

figure
subplot(2,1,1);
plot(w,abs(y_1))
title("Q2.a) Magnitude graph")

subplot(2,1,2);
plot(w,angle(y_1))
title("Q2.a) Phase graph")

% 2nd part
% Defining N according to unit step limits
n_2=-10:1:11;
% Calculating DTFT
y_2=DTFT((0.6.^abs(n_2)),n_2,w);

figure
subplot(2,1,1);
plot(w,abs(y_2))
title("Q2.b) Magnitude graph")

subplot(2,1,2);
plot(w,angle(y_2))
title("Q2.b) Phase graph")


% 3rd part
% Defining N according to unit step limits
n_3=-3:1:100;
% Calculating DTFT
y_3=DTFT(n_3.*(0.9.^(n_3)),n_3,w);

figure
subplot(2,1,1);
plot(w,abs(y_3))
title("Q2.c) Magnitude graph")

subplot(2,1,2);
plot(w,angle(y_3))
title("Q2.c) Phase graph")

% 4th part
% Defining N according to unit step limits
n_4=2:1:100;
% Calculating DTFT
y_4=DTFT((n_4+3).*(0.8.^(n_4-1)),n_4,w);

figure
subplot(2,1,1);
plot(w,abs(y_4))
title("Q2.d) Magnitude graph")

subplot(2,1,2);
plot(w,angle(y_4))
title("Q2.d) Phase graph")

% 5th part
% Defining N according to unit step limits
n_5=0:1:10;
% Calculating DTFT
y_5=DTFT((4).*(-0.7.^(n_5)).*cos((0.25*pi).*n_5),n_5,w);

figure
subplot(2,1,1);
plot(w,abs(y_5))
title("Q2.e) Magnitude graph")

subplot(2,1,2);
plot(w,angle(y_5))
title("Q2.e) Phase graph")

% Defining Function for calculating DTFT
function [X] = DTFT(x,n,w ) 
    X = x*exp(-1j*n'*w);
end