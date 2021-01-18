
%This gives the information of duration of signal
info = audioinfo('NOisyMessage.wav')
%Data y and sampling frequency
[y,Fs] = audioread('NoisyMessage.wav')


t = 0:seconds(1/Fs):seconds(info.Duration);
t = t(1:end-1);

%The original signal in time domain
figure(1)
plot(t,y)
title('Original audio signal in time domain')
xlabel('Time(s)')
ylabel('magnitude')

%Fast Fourier transform(DFT)
fft_y = fft(y);
f = linspace(0,Fs,length(fft_y));
%The original signal in frequency domain magnitude and angle
figure(2)
plot(f,abs(fft_y))
title('Original audio signal in frequency domain')
xlabel('frequency(Hz)')
ylabel('magnitude')
figure(3)
plot(f,angle(fft_y))
title('Original audio signal in frequency domain')
xlabel('angle')
ylabel('magnitude')

%Using lowpass filter to remove noise from 2000hz to 9000Hz
filteredsignal = filter(Hd,y) %analog signal
filtertransform = fft(filteredsignal) %DFT signal

%Using band stop filter to remove pulse at 500Hz and 10500hz
filteredsignal2 = filter(Hbs,filteredsignal) %analog signal applied both LFP and Bandstop
filtertransform2 = fft(filteredsignal2) %DFT

%result applied only lowpass filter magnitude and angle
figure(4)
plot(f,abs(filtertransform))
title('audio signal without noise in frequency domain')
xlabel('frequency(Hz)')
ylabel('magnitude')
figure(5)
plot(f,angle(filtertransform))
title('Original audio signal in frequency domain')
xlabel('angle')
ylabel('magnitude')

%result applied LPF and bandstop filter magnitude and angle
figure(6)
plot(f,abs(filtertransform2))
title('audio signal without noise in frequency domain')
xlabel('frequency(Hz)')
ylabel('magnitude')
figure(7)
plot(f,angle(filtertransform2))
title('Original audio signal in frequency domain')
xlabel('angle')
ylabel('magnitude')

%final result analog signal in time domain
figure(8)
plot(t,filteredsignal2)
title('audio signal without noise in time domain')
xlabel('time(s)')
ylabel('magnitude')

%writing process into audio file
audiowrite('NoisyMessage_final.wav',filteredsignal2,Fs)