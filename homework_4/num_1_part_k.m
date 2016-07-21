%Problem 1 part i
%Liberal inspiration on this code from Dr. Wentworth
%Version 2/19/16
%Author Austin Chase Minor

clc;
clear;
T = 4
N = 10
M = 800
dt = 3*T/M

for k = 1:N
  kn(k) = k;
  a(k) = (2/(pi^2 * k^2)) * (cos(pi * k/2) + cos(3*pi*k/2)-2*cos(pi*k));
  a(k) = a(k) + (2/(pi*k))*(sin(pi*k/2)+sin(3*pi*k/2) - sin(pi*k/2) - sin(pi*k*3/2));
  b(k) = (2/(pi^2 * k^2)) * (sin(3*pi*k/2) + sin(pi*k/2));
  b(k) = b(k) + (1/(pi*k)) * (-cos(pi*k/2) - (-1*cos(pi*k/2)-0*cos(pi*k)) - 3*cos(3*pi*k/2) + cos(3*pi*k/2) + 2*cos(pi*k) + 2*cos(3*pi*k/2) - 2*cos(pi*k));
end

for i = 1:M
  t(i) = i*dt;
  for k = 1:N
    x(k) = a(k) * cos(pi*k*t(i)/2) + b(k) * sin(pi*k*t(i)/2);
  end
  xtot(i) = 3/4 + sum(x);
end

figure
subplot(2,2,1)
plot(t, xtot, 'linewidth', 2)
xlabel('n')
ylabel('x[n]')
title('1.7 b')
grid on

subplot(2,2,2)
stem(kn, a, 'linewidth', 2)
xlabel('n')
ylabel('x[n]')
title('1.7 b')
grid on

subplot(2,2,3)
stem(kn, b, 'linewidth', 2)
xlabel('n')
ylabel('x[n]')
title('1.7 b')
grid on