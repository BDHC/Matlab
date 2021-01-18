%Question 1

k = -100:100;
w = (pi/100)*k;

% a)
n1 = -10:10;
x1 = 0.6.^abs(n1);
x1 = x1(1:1:length(n1));
X1 = testdtft(x1,-10:10,pi)
magX1 = abs(X1);
angX1 = angle(X1);

figure(1)
subplot(2,1,1);
plot(w/pi,magX1);grid on
xlim([-1 1])
title('Magnitude for question a)')
xlabel('frequency in units pi');
ylabel('|X|')

subplot(2,1,2);
plot(w/pi, angX1/pi);
xlim([-1 1])
ylim([-1 1])
title('Angle for question a)')
xlabel('frequency in units pi');
ylabel('Angle in units pi');
grid off

%b)
n2 = 0:20;
x2 = n2.*(0.9).^n2;

x2 = x2(1:1:length(n2));
X2 = testdtft(x2,0:20,pi)
magX2 = abs(X2);
angX2 = angle(X2);

figure(2)
subplot(2,1,1)
plot(w/pi,magX2);grid on
xlim([-1 1])
title('Magnitude for question b)')
xlabel('frequency in units pi');
ylabel('|X|')

subplot(2,1,2);
plot(w/pi, angX2/pi);
xlim([-1 1])
title('Angle for question b)')
xlabel('frequency in units pi');
ylabel('Angle in units pi');
grid off

% c)
n3 = 0:50;
x3 = exp(j*0.5*pi).^n3;

x3 = x3(1:1:length(n3));
X3 = testdtft(x3,0:50,pi)
magX3 = abs(X3);
angX3 = angle(X3);

figure(3)
subplot(2,1,1)
plot(w/pi,magX3);grid on
xlim([-1 1])
title('Magnitude for question c)')
xlabel('frequency in units pi');
ylabel('|X|')

subplot(2,1,2);
plot(w/pi, angX3/pi);
xlim([-1 1])
title('Angle for question c)')
xlabel('frequency in units pi');
ylabel('Angle in units pi');
grid off

% d)
n4 = 0:7;
x4 = [4 3 2 1 1 2 3 4];

x4 = x4(1:1:length(n4));
X4 = testdtft(x4,0:7,pi)
magX4 = abs(X4);
angX4 = angle(X4);

figure(4)
subplot(2,1,1)
plot(w/pi,magX4);grid on
xlim([-1 1])
title('Magnitude for question d)')
xlabel('frequency in units pi');
ylabel('|X|')

subplot(2,1,2);
plot(w/pi, angX4/pi);
xlim([-1 1])
title('Angle for question d)')
xlabel('frequency in units pi');
ylabel('Angle in units pi');
grid off

% e)
n5 = 0:7;
x5 = [4 3 2 1 -1 -2 -3 -4];

x5 = x5(1:1:length(n5));
X5 = testdtft(x5,0:7,pi)
magX5 = abs(X5);
angX5 = angle(X5);

figure(5)
subplot(2,1,1)
plot(w/pi,magX5);grid on
xlim([-1 1])
title('Magnitude for question e)')
xlabel('frequency in units pi');
ylabel('|X|')

subplot(2,1,2);
plot(w/pi, angX5/pi);
xlim([-1 1])
title('Angle for question e)')
xlabel('frequency in units pi');
ylabel('Angle in units pi');
grid off













