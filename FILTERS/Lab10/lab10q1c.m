
T = 2*pi;
w = linspace(-pi,pi,10000 ); 
S_ = 2*tan(w/2)/T;

subplot(2,1,1)
plot(w,S_);
title('Digital to analog');
xlabel('w');
ylabel('omega');

subplot(2,1,2)
plot(S_,w);
title('Analog to digital');
xlabel('omega');
ylabel('w');