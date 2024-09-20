[b,a] = butter(10,0.1*pi);
Hw = freqz(b,a);

y2 = filter(b,a,test_signal);
plot(n,y2)
title('signal after sending through filter')
ylabel('x[n]*h[n]')
xlabel('n')
ylim([-1,1])