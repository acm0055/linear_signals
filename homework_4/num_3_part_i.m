%Problem 1 part i
%Liberal inspiration on this code from Dr. Wentworth
%Version 2/19/16
%Author Austin Chase Minor

clc;
clear;
T = 1
N = 5
M = 800
dt = 4*T/M

for k = 1:2*N
  kn(k) = -k*(k <= N) + (k-N)*(k > N);
  i = -k*(k <= N) + (k-N)*(k > N);
  c(k) = j/(pi*i)*e^(-j*pi*i) + 1/(pi^2 * i^2)*(e^(-j*pi*i)-1);
end

for i = 1:M
  t(i) = i*dt;
  for k = 1:2*N
    m = -k*(k <= N) + (k-N)*(k > N);
    x(k) = c(k) * e^(j*m*pi*t(i));
  end
  xtot(i) = .25 + sum(x);
end

figure
subplot(2,2,1)
plot(t, xtot, 'linewidth', 2)
xlabel('t')
ylabel('x(t)')
title('#3 Part i')
grid on

subplot(2,2,2)
stem(kn, abs(c), 'linewidth', 2)
xlabel('k')
ylabel('|x(t)|')
title('#3 Part i')
grid on

subplot(2,2,3)
stem(kn, angle(c), 'linewidth', 2)
xlabel('k')
ylabel('angle(x(t))')
title('#3 Part i')
grid on