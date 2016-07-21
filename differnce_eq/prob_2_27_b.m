%Copyright (c) 2016, Austin Chase Minor
%All rights reserved.
%
%Redistribution and use in source and binary forms, with or without
%modification, are permitted provided that the following conditions are met:
%1. Redistributions of source code must retain the above copyright
%   notice, this list of conditions and the following disclaimer.
%2. Redistributions in binary form must reproduce the above copyright
%   notice, this list of conditions and the following disclaimer in the
%   documentation and/or other materials provided with the distribution.
%3. All advertising materials mentioning features or use of this software
%   must display the following acknowledgement:
%   This product includes software developed by Austin Minor.
%4. Neither the name of Austin Minor nor the
%   names of its contributors may be used to endorse or promote products
%   derived from this software without specific prior written permission.%
%
%THIS SOFTWARE IS PROVIDED BY Austin Minor ''AS IS'' AND ANY
%EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
%WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
%DISCLAIMED. IN NO EVENT SHALL Austin Minor BE LIABLE FOR ANY
%DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
%(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
%LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
%ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
%(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
%SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
%
%Author: Austin Minor
%Version: 2/10/16
%
%T = .4

T = .4;
length = 100;
num_points = length/T;
n = 0:num_points - 1;
y = zeros(1, num_points);

%y(0)
y(1) = 1;
y(2) = 1;
for i = 3:num_points
  y(i) = y(i-1)*(2-3*T) + y(i-2)*(-1-T-2*T^2);
end

plot(n, y, 'linewidth', 2)
xlabel('n')
ylabel('y[t]')
title('Problem 2.26')
axis([0 max(n) (min(y) - 10) (max(y) + 10)])
grid on0;
num_points = length/T;
n = 0:num_points - 1;
y = zeros(num_points);

%y(0)
y(1) = 1;
y(2) = -T + 2;
for i = 3:num_points
  y(i) = y(i-1)*(2-2*T) + y(i-2)*(-1-2*T-T^2);
end

plot(n, y, 'linewidth', 2)
xlabel('n')
ylabel('y[t]')
title('Problem 2.27, T = .4')
axis([0 max(n) (min(y) - 10) (max(y) + 10)])
grid on