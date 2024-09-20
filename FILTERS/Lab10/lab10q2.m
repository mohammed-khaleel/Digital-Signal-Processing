syms z
alpha = 0.7;
Hz_low = (1+z^-1)/(1-alpha*z^-1)*0.5*(1-alpha)

w_subs = 0:0.01:pi;
z_subs = exp(1j*w_subs);

Hw = subs(Hz_low,z,z_subs);
plot(w_subs,abs(Hw))
ylabel('H(w)')
xlabel('w')
title('Frequency response of low pass filter')