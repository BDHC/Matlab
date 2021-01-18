%Question 2
 %x = 0.5*(1-0.5*(exp(j.*n*2*pi/(M-1))+exp(-j.*n*2*pi/(M-1))))
 %x = [1 1 1 1 1 1 1 1 1 1]
%x = [4 3 2 1 -1 -2 -3 -4]
% x = 0.6.^abs(n);
% x=n.*(0.9).^n
% x = exp(j*0.5*pi).^n
%x = (exp(j*0.48*pi).^n + exp(-j*0.48*pi).^n + exp(j*0.52*pi).^n + exp(-j*0.52*pi).^n)*0.5; 
%x = [1,1,1,1]
k = -100:100;
w = (pi/100)*k;

n = 0:20;
x = n.*(0.9).^n;

x1 = x(1:1:length(n));
X = testdtft(x1,0:20,pi)

magX = abs(X);
angX = angle(X);
subplot(2,1,1);
plot(w/pi,magX);grid on
xlim([-1 1])
title('Magnitude')
xlabel('frequency in units pi');
ylabel('|X|')

subplot(2,1,2);
plot(w/pi, angX/pi);
xlim([-1 1])
title('Angle')
xlabel('frequency in units pi');
ylabel('Angle');
grid off