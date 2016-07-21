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
%Version: 2/1/16
%
%Convolution problem #2

t = 0:.001:3*pi;

y = (t >= 0 & t < pi) .* (-1 * cos(t) + 1);
%plus(expresssion, y) is a clear way to represent += operator
%uses boolean and += to update each piecewise section of y
y = plus((t >= pi & t < (2*pi)) .* (cos(t) + cos(t-pi)), y);
y = plus((t >= (2*pi) & t < (3*pi)) .* (cos(t-pi) - 1), y);

plot(t, y, 'linewidth', 2)
xlabel('time (t)')
ylabel('y(t)')
title('Convolution HW #2')
axis([0, 3*pi, -3, 3])
grid on