wp =pi/2;
N =6;
e =0.5;
S = zeros(1,N);
A = zeros(1,N);
  B = (1/N)*asinh(-1/e);
for k = 1:N
   A=((2*(k-1))+1)*pi/(2*N);
    S(k)=wp*((sin(A)*sinh(B))+(1i*cos(A)*cos(B)));
end

V = S.';

zplane([],V);