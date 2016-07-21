%Problem 1 part i
%Liberal inspiration on this code from Dr. Wentworth
%Version 2/19/16
%Author Austin Chase Minor

clc;
clear;
T = 4
N = 20
M = 800
dt = 2*T/M

for k = 1:N
  kn(k) = k;
  a(k) = 2/(k^2*pi^2)*(cos(k*pi)-1);
  b(k) = -2/(k*pi)*cos(2*k*pi);
end

for i = 1:M
  t(i) = i*dt;
  for k = 1:N
    x(k) = a(k) * cos(pi*k*t(i)/2) + b(k) * sin(pi*k*t(i)/2);
  end
  xtot(i) = 3/2 + sum(x);
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