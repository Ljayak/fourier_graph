%%%%% FOURIER SERIES EXERCISE %%%%%%%%%%%%%%%%%%%%

close all; clc
syms n t ;
t = linspace(-5,5);

%The Fourier coefficients were calculated by hand:
a_0 = (-4*pi^2)/3;
a_n = (-8*(-1)^n)/(n^2);
b_n = 0;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sum = ((a_n*cos(n*t)) +(b_n*sin(n*t)));                                           
y1 = (a_0/2) + symsum(sum,n,1,1);       %N = 1    
y2 = (a_0/2) + symsum(sum,n,1,5);       %N = 5
y3 = (a_0/2) + symsum(sum,n,1,10);      %N = 10
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
z=-2*(t.^2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Create data and 3-by-1 tiled chart layout:
tiledlayout(3,1)
% plot 1: N=1
ax1 = nexttile;
plot(t,z,'b',t,y1,'r');
title(ax1,'N=1')
axis([-3 3 -20 2])

% plot 2: N=5
ax2 = nexttile;
plot(t,z,'b',t,y2,'r');
title(ax2,'N=5')
axis([-3 3 -20 2])

% plot 3: N=10
ax3 = nexttile;
plot(t,z,'b',t,y3,'r');
title(ax3,'N=10')
axis([-3 3 -20 2])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%











