%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                Question 4                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear
close all

%defining Omega as given in the question
w=-pi:0.01:pi;

% 1st part
n_1=-9:1:9;
% Calculating Frequency Response Function
y_1=DTFT((0.9).^abs(n_1),n_1,w);

figure

%Plotting the magnitude of the transformed function
subplot(2,1,1);
plot(w,abs(y_1))
title("Q4.a) Magnitude graph")

% Plotting the phase response of the transformed function
subplot(2,1,2);
plot(w,angle(y_1))
title("Q4.a) Phase graph")

% 2nd part
% Defining n according the the unit step function given in the question
n_2=-20:1:20;
% Calculating Frequency Response Function
y_2=DTFT(sinc(0.2.*n_2),n_2,w);

figure
% Plotting the magnitude of the transformed function
subplot(2,1,1);
plot(w,abs(y_2))
title("Q4.b) Magnitude graph")

% Plotting the phase response of the transformed function
subplot(2,1,2);
plot(w,angle(y_2))
title("Q4.b) Phase graph")

% 3rd part
% Defining n according the the unit step function given in the question
n_3=0:1:40;
% Calculating Frequency Response Function
y_3=DTFT(sinc(0.2.*n_3),n_3,w);

figure
% Plotting the magnitude of the transformed function
subplot(2,1,1);
plot(w,abs(y_3))
title("Q4.c) Magnitude graph")

% Plotting the phase response of the transformed function
subplot(2,1,2);
plot(w,angle(y_3))
title("Q4.c) Phase graph")

% 4th part
% Defining n according the the unit step function given in the question
n_4=0:1:30;
% Calculating Frequency Response Function
y_4=DTFT(0.5.^n_4 + 0.4.^n_4,n_4,w);

figure
subplot(2,1,1);
plot(w,abs(y_4))
title("Q4.d) Magnitude graph")

subplot(2,1,2);
plot(w,angle(y_4))
title("Q4.d) Phase graph")

% 5th part
n_5=0:1:10;
% Calculating Frequency Response Function
y_5=DTFT(0.5.^abs(n_5) .* cos((0.1*pi).*n_5),n_5,w);

% Plotting the magnitude response of the transformed function
figure
subplot(2,1,1);
plot(w,abs(y_5))
title("Q4.e) Magnitude graph")

% Plotting the phase response of the transformed function
subplot(2,1,2);
plot(w,angle(y_5))
title("Q4.e) Phase graph")

function [X] = DTFT(x,n,w ) 
    X = x*exp(-1j*n'*w);
end