close;
clc;
clear;
close all;
%Part a

% Orignal signal

to=0:1/(10000*2000):0.001;
freq = 2000;
a=2;
x_orig=a*cos(2*pi*freq*to);
figure
subplot(3,1,1)
plot(to,x_orig,'linewidth',2)
title("Q.2(a) Orignal Signal at 2khz")
xlabel('Time in Seconds')
ylabel('Amplitude')

%Part b
% 30Khz

F_s = 30000;
t = 0:1/F_s:0.001;
a=2;
samp=a*cos(2*pi*freq*t);
subplot(3,1,2);
plot(t,samp,'linewidth',2)
hold on
stem(t,samp,'linewidth',2)
hold off
title("Q.2(b) Sampled Signal at 30khz")
legend("Sampled Sine Wave","Sampled Stem Plot")
xlabel('Time in Seconds')
ylabel('Amplitude')

% Part 3

M = 16; % As given in the question
[q,r] = quantization(samp,M); % Calling the Quantization function
% figure; % Plotting the sampled signal
% stem(t,x,"g")
% disp(q)
subplot(3,1,3)
hold on; % Plotting the orignal Signal
plot(to,x_orig,'linewidth',2,'color','r')
p =plot(t,samp);
set((p),'linewidth',2,'color','g');
h= plot(t,q); % Plotting the quantised Signal
set((h),'linewidth',2,'color','b');
grid on;
title("Q.2(c): Sampled and Qauntized x(t)");
legend("Sine Wave","Sampled Sine Wave","Quantized Signal")
xlabel('Time in Seconds')
ylabel('Amplitude')
hold off;

%Part 4
mat = zeros(1,length(q));
min = min(samp);
for i=1:length(q)
    for j = 1:length(r)
        if i == 1
           mat(i) = 16;
        elseif (q(i) == r(j))
           mat(i) = j;
        end
    end
end
disp("The quantized levels into as 4-bit representation to get a digital ")
disp("signal at each sampled time can be seen as (Taking levels from 1-16")
disp(mat)
function [q,r] = quantization(initial,M)
N=length(initial);                            % Measure the length of initial
q = zeros(1,N);                               % store the quantization values                                    
diff=(max(initial)-min(initial))/M;           % Gap between 2 levels
r = min(initial):diff:max(initial);           % Updating the levels 
for i=1:N
    for j=1:M
        if i == 1 && j == 1
            q(i) = max(initial);
        end
        if initial(i)<=r(j)+diff/2
            if initial(i)>=r(j)-diff/2
                q(i)=r(j);               
            end    
        elseif i ~= 1
            if initial(i)>=r(j)-diff/2
                q(i) = q(i-1);
            end
        end
    end
end
end

