Sampling_Frequency = 2000;
Pass_Band_frequency  = 100;
Stop_band_frequency = 500;  
Pass_Band_attenuation=-1;   
Stop_Band_attenuation = -100;

%changing bandwith

bandwidths = [0.5,0.3,0.1,0.05,0.02,0.01];
for i= 1:6
[a1,b1] = cheby1(n1,-Pass_Band_attenuation,bandwidths(i));
w1 = 0:0.01:pi;
Hw1 = freqz(a1,b1,w1);
subplot(3,2,i)
plot(w1,abs(Hw1))
title(['Chebyshev for Wn=',num2str(bandwidths(i)),'dB'])
ylabel('H(w)')
xlabel('w')
end