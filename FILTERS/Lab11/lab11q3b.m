Sampling_Frequency = 2000;
Pass_Band_frequency  = 100;
Stop_band_frequency = 500;  
Pass_Band_attenuation = -0.1;    
Stop_Band_attenuation = -100;
%changing Tolerance

for i= 1:6
Pass_Band_attenuation = Pass_Band_analysis(i);
[n2,wn2] = buttord(2*Pass_Band_frequency/Sampling_Frequency,2*Stop_band_frequency/Sampling_Frequency,-Pass_Band_attenuation,-Stop_Band_attenuation);
[a2,b2] = butter(n2,wn2);

w2 = 0:0.01:pi;
Hw2 = freqz(a2,b2,w2);

subplot(3,2,i)
plot(w2,abs(Hw2))
title(['Butterworth for δp=',num2str(Pass_Band_attenuation),'dB'])
ylabel('H(w)')
xlabel('w')
end