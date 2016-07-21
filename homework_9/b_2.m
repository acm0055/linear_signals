%Author: Austin Chase Minor
%Version: 3/7/16
%Description: Computes and Graphs the Discrete
% Fourier Transform of a Function

k = .1;
T = 4*pi;

omega = -T:k:T;

X = 2 * cos(2.*omega) + 2 * cos(omega) + 1;

figure
subplot(2, 1, 1)
plot(omega, abs(X), 'linewidth', 2)
xlabel('Frequency (Omega)')
ylabel('Magnitude of Discrete Fourier Transform')
title('Discrete Time Fourier Transform Magnitude Graph')

subplot(2, 1, 2)
plot(omega, angle(X), 'linewidth', 2)
xlabel('Frequency (Omega)')
ylabel('Phase of Discrete Fourier Transform')
title('Discrete Time Fourier Transform Phase Graph')