delp=1/sqrt(2);
wp=100;
dels=0.0562;
ws=250;
wm=0:0.1:500;
e=sqrt((1/delp^2) -1);
t = sqrt(((1/dels^2)-1)/((1/delp^2)-1));
Nc = acosh(t)/(acosh(ws/wp));
Nc= ceil(Nc);
C=cos(Nc*acos(wm/wp));
C2=cosh(Nc*acosh(wm/wp));
H=(1./(sqrt(1+(e.^2).*(C.^2))).*(abs(wm)<=wp)) + (1./(sqrt(1+(e.^2).*(C2.^2))).*(abs(wm)>wp));
plot(wm,abs(H));