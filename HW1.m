% Austin Welch EC541 HW1

% Question 1
X1 = unifrnd(0,1,[1,10^6]);
X2 = unifrnd(0,1,[1,10^6]);
X3 = min(X1,X2);
X4 = max(X1,X2);
X5 = X1 + X2;

% a.
mean_X1 = mean(X1)

% b.
mean_X3 = mean(X3)

% c.
mean_X4 = mean(X4)

% d. 
[YCDF, XCDF] = cdfcalc(X5);
size(YCDF);
XCCDF = XCDF;
YCCDF = 1 - YCDF(1:end-1);
size(YCCDF);
%plot(XCCDF,YCCDF);
%title('CCDF of X5');


%%%%%%%%%%%%%%%%%%%%
% Question 2


two1 = unifrnd(1,2,[1,10^6]);
two2 = unifrnd(1,2,[1,10^6]);
twomin = min(two1,two2);
twomax = max(two1,two2);
first_packet = mean(twomin)
second_packet = mean(twomax)

%%%%%%%%%%%%%%%%%%%
% Question 3


%3.c Plotting a piecewise function of X
f = @(x) [1.*(x<0) + (-(x.^2)/2 + 1).*(0<=x & x<=1) + ((x.^2)/2 -2.*x +2).*(1<=x & x<=2)];
x = linspace(0,2);
%figure(1)
%plot(x, f(x))
%grid




figure
%plot(XCCDF,YCCDF,'-ro',x,f(x),'-.b')
legend('Simulation','Analytical')
title('Simulation Vs. Analytical CCDF');
grid



% Question 7
X = unifrnd(0,5,[1,10^6]);
Y = unifrnd(0,5,[1,10^6]);


