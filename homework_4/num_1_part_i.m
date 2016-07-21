%Problem 1 part i
%Liberal inspiration on this code from Dr. Wentworth
%Version 2/19/16
%Author Austin Chase Minor

clc;
clear;
T = 1
N = 10
M = 800
dt = 4*T/M

for k = 1:N
  kn(k) = k;
  b(k) = 1 / (pi * k);
end

for i = 1:M
  t(i) = i*dt;
  for k = 1:N
    x(k) = b(k) * sin(2*pi*k*t(i));
  end
  xtot(i) =sum(x);
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