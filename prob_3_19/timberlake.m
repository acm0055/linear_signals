function y = timberlake(tau, omega)

if omega == 0
  y = 1;
end

y = (sin(omega*tau/(2*pi)) / (omega*tau/(2*pi)));