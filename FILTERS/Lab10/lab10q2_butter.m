[b,a] = butter(10,0.1*pi);
Hw = freqz(b,a);
plot(linspace(0,pi,512),abs(Hw))
title('Frequency Response of butterworth Filter')
ylabel('H(w)')
xlabel('w')