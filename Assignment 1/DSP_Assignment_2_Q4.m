close;
clc;
clear;
close all;
% Question 4
rn = -1 + (1+1).*rand(1000,1);
sum1=0;
for i=1:length(rn)
  sum1=sum1+rn(i);
end
M=sum1/length(rn); %the mean
sum2=0;
for i=1:length(rn)
    sum2=sum2+ (rn(i)-M)^2;
end
V=sum2/length(rn); %The Variance
fprintf("The Random Signal has Mean as "+ M + " and Variance as "+ V);