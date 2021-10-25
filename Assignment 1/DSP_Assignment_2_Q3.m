close;
clc;
clear;
close all;
% Question 3
% syms z
% t = (0:0.1:100);
syms z
Hs = 1/ (1 - 0.8/z + 0.16/(z^2));
% Ht = (4.*exp((2*t)/5))/5 + dirac(t) + (4*t.*exp((2*t)/5))/25;
% figure;
% plot(Ht)
% % This can be re-written as z^2/(z-0.4)^2
% Ht = tf([1,0,0],[1,-0.8,0.16]);
% % disp(Ht)
% figure;
% impulse(Ht)
% title("Q3 The Impulse Response")
Ht = iztrans(Hs)
% disp(Ht)
n = 0:0.001:100;
t = 2*(2/5).^n + (2/5).^n.*(n - 1);
plot(t)
xlabel('Time in Seconds')
ylabel('Amplitude')
title("Q3 The Impulse Response")