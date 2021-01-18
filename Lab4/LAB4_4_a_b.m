%Question 4 b
% a)
k1 = -100:100;
w1 = (pi/100)*k;

n1 = 0:3;
x1 = [1 1 1 1];
x1 = x1(1:1:length(n1));
X1 = testdtft(x1,0:3,pi)
magX1 = abs(X1);
angX1 = angle(X1);

figure(1)
subplot(2,1,1);
plot(w1/pi,magX1);grid on
xlim([-1 1])
title('Magnitude for question a)')
xlabel('frequency in units pi');
ylabel('|X|')

subplot(2,1,2);
plot(w1/pi, angX1/pi);
xlim([-1 1])
title('Angle for question a)')
xlabel('frequency in units pi');
ylabel('Angle');
grid off


% b)
n2 = [0:3];
x2 = [1 1 1 1]

k2 = 0:3;
w2 = pi/4*k2;


y2 = x(1:1:4);
Y2 = dft(y2,4)
magY2 = abs(Y2(1:1:4));
angY2 = angle(Y2(1:1:4));

figure(2)
subplot(2,1,1)
stem(w/pi,magY2)
xlim([0 1])
title('Magnitude for question b)')
xlabel('frequency in units pi');
ylabel('|X|')

subplot(2,1,2)
stem(w/pi,angY2/pi)
xlim([-1 1])
title('Angle for question b)')
xlabel('frequency in units pi');
ylabel('Angle');
