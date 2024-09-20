for N=1:9
n = 0:0.001:2;
Cn = ones(1,length(n));
e = 0.5;

for i = 1:length(n)
    if n(i)<=1
        Cn(i) = cos(N*acos(n(i)));
    else
        Cn(i) = cosh(N*acosh(n(i)));
    end
end 
H = 1./(1 + (e.^2).*(Cn.^2));
subplot(3,3,N)
plot(H)
title(['chebyshev for N=',num2str(N)])
end