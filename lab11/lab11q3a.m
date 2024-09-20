Sampling_Frequency = 2000;
Pass_Band_frequency  = 100;
Stop_band_frequency = 500;  
Pass_Band_attenuation = -0.1;    
Stop_Band_attenuation = -100;
%changing Tolerance
Pass_Band_analysis = [-4,-2,-1,-0.8,-0.4,-0.1];
for i= 1:6
Pass_Band_attenuation = Pass_Band_analysis(i);
[n1,wn1] = cheb1ord(2*Pass_Band_frequency/Sampling_Frequency,2*Stop_band_frequency/Sampling_Frequency,-Pass_Band_attenuation,-Stop_Band_attenuation);
[a1,b1] = cheby1(n1,-Pass_Band_attenuation,wn1);

w1 = 0:0.01:pi;
Hw1 = freqz(a1,b1,w1);

subplot(3,2,i)
plot(w1,abs(Hw1))
title(['Chebyshev for δp=',num2str(Pass_Band_attenuation),'dB'])
ylabel('H(w)')
xlabel('w')
end