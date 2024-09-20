n = 1:100;
test_signal = sin(pi*0.05*n) + 0.5*sin(pi*0.4*n); % Test signal (sum of sinusoids)
freq_response = fft(test_signal);

subplot(2,1,1)
plot(n,test_signal)
title('signal in time domain')
ylabel('x[n]')
xlabel('n')

subplot(2,1,2)
x_axis = 0:length(freq_response)-1;
plot(x_axis*2*pi/length(test_signal),abs(freq_response));
title('signal in frequency domain')