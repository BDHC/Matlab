function y = dtoaStairs(x,fs,t1,t2)
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
t = t1:Ts:t2;
n= t1/Ts:t2/Ts;

% Sampled Signal
n = (t1/Ts):(t2/Ts);
xn = exp(-1000.*abs(n.*Ts));

%question 2 ZOH
[k,y] = stairs(n*Ts,xn);%output y
y=y.' % #ofy is doubled
J = t1:Ts/2:t2; %# of xaxis doubled for error calculation
o = exp(-1000*abs(J)); % # of x doubled with new interval

%Reconstruction plot
subplot(2,1,1);grid;
stairs(n*Ts,xn);grid;
title('Reconstructed Signal')
xlabel('Time (s)')
ylabel('Amplitude')

%error plot
error = y-o;
subplot(2,1,2);grid;
plot(J,error,'r');grid;
xlabel('Time (s)')
ylabel('Absolute Difference')
title('Errors')

%displaying maximum error
disp('error')
disp(max(error))