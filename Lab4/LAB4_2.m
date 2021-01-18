%Question 2
function X = ques2(M)
w = pi/100;
k = -100:100;
w = w*k;

n = 0:M-1
%Rectangular Window
xr =ones(1,M)
XR = testdtft(xr,0:M-1,pi)
magXR = abs(XR);
maxXR = max(abs(XR));

%Von Hann Window
xv = 0.5*(1-0.5*(exp(j.*n*2*pi/(M-1))+exp(-j.*n*2*pi/(M-1))))
XV = testdtft(xv,0:M-1,pi)
magXV = abs(XV);
maxXV = max(abs(XV));

%Triangular Window
xt = (1-abs(M-1-2.*n)/(M-1))
XT = testdtft(xt,0:M-1,pi)
magXT = abs(XT);
maxXT = max(abs(XT));

%Hamming Window
xh = (0.54 - 0.46*0.5*(exp(j.*n*2*pi/(M-1))+exp(-j.*n*2*pi/(M-1)) ))
XH = testdtft(xh,0:M-1,pi)
magXH = abs(XH);
maxXH = max(abs(XH));

%Plot
%Rectangular Window
subplot(2,2,1)
plot(w/pi,magXR/maxXR);
xlim([-1 1])
title('M = 50')
xlabel('frequency in units pi');
ylabel('Magnitude |WR(w)|')

%Von Hann Window
subplot(2,2,2)
plot(w/pi,magXV/maxXV);
xlim([-1 1])
title('M = 50')
xlabel('frequency in units pi');
ylabel('Magnitude |WVH(w)|')

%Triangular Window
subplot(2,2,3)
plot(w/pi,magXT/maxXT);
xlim([-1 1])
title('M = 50')
xlabel('frequency in units pi');
ylabel('Magnitude |WT(w)|')

%Hamming Window
subplot(2,2,4)
plot(w/pi,magXH/maxXH);
xlim([-1 1])
title('M = 50')
xlabel('frequency in units pi');
ylabel('Magnitude |WH(w)|')

