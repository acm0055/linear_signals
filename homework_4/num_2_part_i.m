%Problem 1 part i
%Liberal inspiration on this code from Dr. Wentworth
%Version 2/19/16
%Author Austin Chase Minor

clc;
clear;
T = 2
N = 10
M = 800
dt = 4*T/M

for k = 1:N
  kn(k) = k;
  a(k) = -1/(pi^2*k^2) * (cos(pi*k) - 1);
  b(k) = 1/(pi*k);
  c(k) = (a(k)^2 + b(k)^2)^(1/2);
  theta(k) = atan2(-b(k), a(k));
end

for i = 1:M
  t(i) = i*dt;
  for k = 1:N
    x(k) = c(k) * cos(k*pi*t(i) + theta(k));
  end
  xtot(i) = .25 + sum(x);
end

figure
subplot(2,2,1)
plot(t, xtot, 'linewidth', 2)
xlabel('t')
ylabel('x(t)')
title('#2 Part i')
grid on

subplot(2,2,2)
stem(kn, abs(c), 'linewidth', 2)
xlabel('k')
ylabel('|x(k)|')
title('#2 Part i')
grid on

subplot(2,2,3)
stem(kn, theta, 'linewidth', 2)
xlabel('k')
ylabel('angle(x(k))')
title('#2 Part i')
grid on