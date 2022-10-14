%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                Question 1                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all
clear
clc

w=-pi:0.01:pi;

% 1st part
% Defining n according to the unit step limits
n_1=-10:1:11;
% Calculating DTFT
y_1=DTFT((0.6).^abs(n_1),n_1,w);

subplot(2,1,1);
plot(w,abs(y_1))
title("Q1.a) Magnitude graph")

subplot(2,1,2);
plot(w,angle(y_1))
title("Q1.a) Angle graph")
% COMMENT ON BEHAVIOUR %
% Phase is 0 => Real Signal bell curve about origin => Symmetric 

% 2nd part
% Defining n according to the unit step limits
n_2=0:1:21;
% Calculating the DTFT
y_2=DTFT(n_2.*(0.9).^n_2,n_2,w);

figure
subplot(2,1,1);
plot(w,abs(y_2))
title("Q1.b) Magnitude graph")

subplot(2,1,2);
plot(w,angle(y_2))
title("Q1.b) Angle graph")

% 3rd part
% Defining n according to the unit step limits
n_3=0:1:51;
% Calculating DTFT
y_3=DTFT(exp((1i*0.5*pi).*n_3),n_3,w);

figure
subplot(2,1,1);
plot(w,abs(y_3))
title("Q1.c) Magnitude graph")

subplot(2,1,2);
plot(w,angle(y_3))
title("Q1.c) Angle graph")
% COMMENT ON BEHAVIOUR %
% Curve Peaks at pi/2, as clearly shown in the figure, which is inferable
% as we have cos(pi*n/2) and sin(pi*n/2) terms

% 4th part
n_4=0:1:7;
% Calculating DTFT
y_4=DTFT([4 3 2 1 1 2 3 4],n_4,w);

figure
subplot(2,1,1);
plot(w,abs(y_4))
title("Q1.d) Magnitude graph")

subplot(2,1,2);
plot(w,angle(y_4))
title("Q1.d) Angle graph")
% COMMENT ON BEHAVIOUR %
% Phase Plots are linear in nature, => x(n) is symmetric

% 5th part
n_5=0:1:7;
y_5=DTFT([4 3 2 1 -1 -2 -3 -4],n_5,w);

figure
subplot(2,1,1);
plot(w,abs(y_5))
title("Q1.e) Magnitude graph")

subplot(2,1,2);
plot(w,angle(y_5))
title("Q1.e) Angle graph")

figure;
plot(w, angle(y_5))
title("Backchodi chalti rehna chahiye")
% COMMENT ON BEHAVIOUR %
% Phase plots are linear in nature, however phase shifted about origin 
% => Negatively Symmetric


function [X] = DTFT(x,n,w) 
    X = x*exp(-1j.*w.*n');
end
