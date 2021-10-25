%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                Question 3                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear;
close all;

M= [10,25,50,101]; 
N = 256;

% number of time samples

figure;
for i = 1:4
    win= rectwin(M(i));                     % hanning window
    % win= win/sum(win);                    % scale window for |h(0)| = 1
    subplot(2,4,i),stem(win);
    title(['Q3.a) Rectangular Window for M = ',sprintf('%d',M(i))])
    % NFFT-point FFT of N-point window function
    R  = fft(win,N);
    % subplot(2,2,2),plot(abs(fftshift(R)))
    w = 2*pi * (0:(N-1)) / N;
    w2 = fftshift(w);
    w3 = unwrap(w2 - 2*pi);
    subplot(2,4,i+4),plot(w3/pi, abs(fftshift(R))/max(abs(fftshift(R))))
    title(['Q.3.a) Normalised DTFT of Rectangular Window for M = ',sprintf('%d',M(i))])
    xlabel('radians / \pi')
end
figure;
for i = 1:4
    win= hanning(M(i));        % hanning window
    % win= win/sum(win);                    % scale window for |h(0)| = 1
    subplot(2,4,i),stem(win);
    title(['Q3.b) Hanning Window for M = ',sprintf('%d',M(i))])
    % NFFT-point FFT of N-point window function
    R  = fft(win,N);
    % subplot(2,2,2),plot(abs(fftshift(R)))
    w = 2*pi * (0:(N-1)) / N;
    w2 = fftshift(w);
    w3 = unwrap(w2 - 2*pi);
    subplot(2,4,i+4),plot(w3/pi, abs(fftshift(R))/max(abs(fftshift(R))))
    title(['Q3.b) Normalised DTFT of Hanning Window for M = ',sprintf('%d',M(i))])
    xlabel('radians / \pi')
end
figure;
for i = 1:4
    win= triang(M(i));        % hanning window
    % win= win/sum(win);                    % scale window for |h(0)| = 1
    subplot(2,4,i),stem(win);
    title(['Q3.c) Triangular Window for M = ',sprintf('%d',M(i))])
    % NFFT-point FFT of N-point window function
    R  = fft(win,N);
    % subplot(2,2,2),plot(abs(fftshift(R)))
    w = 2*pi * (0:(N-1)) / N;
    w2 = fftshift(w);
    w3 = unwrap(w2 - 2*pi);
    subplot(2,4,i+4),plot(w3/pi, abs(fftshift(R))/max(abs(fftshift(R))))
    title(['Q3.c) Normalised DTFT of Triangular Window for M = ',sprintf('%d',M(i))])
    xlabel('radians / \pi')
end
figure;
for i = 1:4
    win= hamming(M(i));        % hanning window
    % win= win/sum(win);                    % scale window for |h(0)| = 1
    subplot(2,4,i),stem(win);
    title(['Q3.d) Hamming Window for M = ',sprintf('%d',M(i))])
    % NFFT-point FFT of N-point window function
    R  = fft(win,N);
    % subplot(2,2,2),plot(abs(fftshift(R)))
    w = 2*pi * (0:(N-1)) / N;
    w2 = fftshift(w);
    w3 = unwrap(w2 - 2*pi);
    subplot(2,4,i+4),plot(w3/pi, abs(fftshift(R))/max(abs(fftshift(R))))
    title(['Q3.d) Normalised DTFT of Hamming Window for M = ',sprintf('%d',M(i))])
    xlabel('radians / \pi')
end

% COMMENT ON BEHAVIOUR
% As M increases, side lobe energy decreases and M thinning occurs, so it
% acts more like an impulse in all the cases.
