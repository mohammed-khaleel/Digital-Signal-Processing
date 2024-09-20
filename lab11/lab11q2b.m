
delta_s = 0.01;    
delta_p = 0.891;    
omega_p = 0.158;   
omega_s = 1;    

N = ceil(acosh((1/delta_s^2 - 1).^0.5) / ((acosh(omega_s / omega_p))).^0.5);

[b, a] = cheby1(N, delta_p, omega_p, 'low');

fs = 1000; 
t = 0:1/fs:1;

sinusoid_in_passband = sin(2*pi*50*t);          
sinusoid_out_of_passband = sin(2*pi*200*t);      

combined_signal = sinusoid_in_passband + sinusoid_out_of_passband;

filtered_signal = filter(b, a, combined_signal);

figure;
subplot(3,1,1);
plot(t, sinusoid_in_passband);
title('Sinusoid Within Passband');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(t, sinusoid_out_of_passband);
title('Sinusoid Outside of Passband');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot(t, filtered_signal);
title('Filtered Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;