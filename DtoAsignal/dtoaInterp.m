function y = dtoaInterp(x,fs,t1,t2)
%
% y = dtoa(x,fs,t1,t2
%
% x:    Input Signal Array
% fs:   Sampling Frequency (Hz)
% t1:   Sample Start Time
% t2:   Sample End Time
% y:    Reconstructed Signal Output
%

Ts = 1/fs; 
dt = 0.00005;  
t = t1:dt:t2
n= t1/Ts:t2/Ts;

% Original Signal
x = exp(-1000*abs(t));
% Sampled Signal
xn = exp(-1000.*abs(n.*Ts));

%question 3
nts = n*Ts;
y = interp1(nts,xn,t);


%Reconstruction plot
subplot(2,1,1);grid;
plot(t,y,'b');grid;
title('Reconstructed Signal')
xlabel('Time (s)')
ylabel('Amplitude')

%error plot
error = y-x;
subplot(2,1,2);grid;
plot(t,error,'r');grid;
xlabel('Time (s)')
ylabel('Absolute Difference')
title('Errors')

%displaying maximum error
disp('error')
disp(max(error))