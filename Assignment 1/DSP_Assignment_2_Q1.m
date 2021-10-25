close;
clc;
clear;
close all;
% Question 1
% Formula for a cosine is cos(2 * pi * t / period).
% So, 240 * pi = 2 * pi / period, so period = 2/240 = 0.00834.
% Thus 10 periods would mean a max t of 10 * 0.00834 = 0.0834.
% Sampling rates are 80, 480 and 1000 samples per second, 
% Number of Samples = (elasped time) / (time per sample)
% numSamples1 = round(0.00834 / (1/80));
% numSamples2 = round(0.00834 / (1/480));
% numSamples3 = round(0.00834 / (1/1000));
fs1 = 80;
dt1 = 1/fs1;
fs2 = 480;
dt2 = 1/fs2;
fs3 = 1000;
dt3 = 1/fs3;
t = (0:0.0000005:0.05);
% That is only 40 and gives a severe undersampling of the signal
% giving a weird shape.
% Make up a t axis going from 0 to 0.1 with numSamples samples.
t1 = (0:dt1:0.05);
t2 = (0:dt2:0.05);
t3 = (0:dt3:0.05);
% t1 = linspace(0, 0.00834, numSamples1);
% t2 = linspace(0, 0.00834, numSamples2);
% t3 = linspace(0, 0.00834, numSamples3);
x = 5 * cos(240 * pi * t);
x1 = 5 * cos(240 * pi * t1);
x2 = 5 * cos(240 * pi * t2);
x3 = 5 * cos(240 * pi * t3);
figure
subplot(4,1,1),plot(t,x,'b.-', 'LineWidth', 2, 'MarkerSize', 15);
title('x(t) vs. t (Orignal Signal)');
xlabel('t1');
ylabel('x1(t1)')
subplot(4,1,2),plot(t1, x1, 'b.-', 'LineWidth', 2, 'MarkerSize', 15);
grid on;
title('x1(t1) vs. t1: Sampled at 80/sec');
xlabel('t1');
ylabel('x1(t1)');
subplot(4,1,3),plot(t2, x2, 'b.-', 'LineWidth', 2, 'MarkerSize', 15);
grid on;
title('x2(t2) vs. t2: Sampled at 480/sec');
xlabel('t2');
ylabel('x2(t2)');
subplot(4,1,4),plot(t3, x3, 'b.-', 'LineWidth', 2, 'MarkerSize', 15);
grid on;
title('x3(t3) vs. t3: Sampled at 1000/sec');
xlabel('t3');
ylabel('x3(t3)');

% According to Nyquist Theorem, fs>=2*f our sampling frequency must be atleast more
% than twice of the frequency, i.e. more than 240, for our orignal signal
% to be preserved, which we can see that happens in the case of 480 and
% 1000, with the sampling output improving with higher frequency as we can
% see in the 1000 case. At the same time, the case with 80 as the sampling
% frequency doesn't really give us a nice output.

