
% Question 3
% A)
k = -100:100;
w = (pi/100)*k;

n = 0:9;

x = (exp(j*0.48*pi).^n + exp(-j*0.48*pi).^n + exp(j*0.52*pi).^n + exp(-j*0.52*pi).^n)*0.5; 
X1 = testdtft(x,0:9,pi);
magX = abs(X1);

figure(1)
plot(w/pi,magX);grid on
xlim([-1 1])
title('Magnitude of DTFT ')
xlabel('frequency in units pi');
ylabel('|X[n]|')

% B)
x2 = [x,zeros(1,90)];
X2 = testdtft(x2,0:99,pi);
magX2 = abs(X2);

figure(2)
plot(w/pi,magX2);grid on
xlim([-1 1])
title('Magnitude of DTFT with 90 zeros')
xlabel('frequency in units pi');
ylabel('|X[n]|')

% C)
n3 = 0:99;
x3 = (exp(j*0.48*pi).^n3 + exp(-j*0.48*pi).^n3 + exp(j*0.52*pi).^n3 + exp(-j*0.52*pi).^n3)*0.5;
X3 = testdtft(x3,0:99,pi);
magX2 = abs(X3);

figure(3)
plot(w/pi,magX3);grid on
xlim([-1 1])
title('Magnitude of DTFT without zero padding')
xlabel('frequency in units pi');
ylabel('|X[n]|')

