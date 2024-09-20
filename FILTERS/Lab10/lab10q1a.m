syms N
w=0:0.1:1000;
wc=300;
H=1./(power((1+power(w/wc,2*N)),0.5));
plot(w,subs(H,N,1))

hold on
plot(w,subs(H,N,2))

plot(w,subs(H,N,3))
title('Analog Butterworth Low Pass Filter')
xlabel('w')
ylabel('|H(jw)|')
legend('N=1','N=2','N=3');