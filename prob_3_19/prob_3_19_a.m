%Problem 1 part i
%Liberal inspiration on this code from Dr. Wentworth
%Version 2/19/16
%Author Austin Chase Minor

clc;
clear;
T = 1
%negative to positive N*dw frequency band
N = 200
%frequency step
dw = 1/pi
M = 800

wpos = 0;
for w = 1:2*N
  wpos = wpos + (w > N);
  wn(w) = -dw*w*(w <= N) + dw*wpos;
  y(w) = (-2*exp(-j*w/2)*timberlake(1,w)) + (2*exp(-j*w)*timberlake(2,w));
end

figure
subplot(2, 1, 1)
stem(wn, abs(y), 'linewidth', 2)
xlabel('angular frequency')
ylabel('|X(w)|')
title('Fourier Transform of x(t)')
grid on

subplot(2, 1, 2)
stem(wn, angle(y), 'linewidth', 2)
xlabel('angular frequency')
ylabel('angle(X(w)')
title('Fourier Transform of x(t)')
grid on