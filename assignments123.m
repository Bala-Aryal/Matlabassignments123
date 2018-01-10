% Assignment 1 Exercise 1
clc
clear all
A=[1,2,5;3,3,8;2,4,9]
B=[2,3,4;2,6,7;1,4,8]
C=A+B
D=A*B
E=A.'
F=inv(A)
G=det(A)

% Assignment 1 Exercise 2
clc
clear all
F=[2,3,5;2,6,9;1,4,15]
inv(F)
G=(inv(F))
rowvec=G(2:2,1:3)

% Assignment 2 Exercise 1 initializing the velocities and distances
clc
clear all
Vi=90*1000/3600
Vf=0*1000/3600
df=150
%B)
d= (Vf^2 - Vi^2)/(2*df)
d2=-2.5
Vf2=18*1000/3600
t=(Vf2-Vi)/d2
df2=(Vf2^2 - Vi^2)/(2*d2)
%C)
t2=5
d3=(Vf2-Vi)/t2

% Assignment 2 Exercise 2 create the first function
clc
clear all
w=inline('exp(-0.3*x)-x+2')
z=fzero(w,[0 3])
%B)
c=inline('cos(x)-19*x/3')
z1=fzero(c,[-1*pi 2*pi])

% Assignment 2 Exercise 3 create the first function
clc
clear all
f1=inline('x1^2-4*x1+9')
p=[1 -4 9]
roots(p)
f2=inline('x2^3-2*x^2+2')
q=[1 -2 +2]
roots(q)

% Assignment 3 Exercise 1
clc
clear all
x=[0:0.01:2*pi];
y=[-1,0.01:1];
y1=cos(3*x);
plot(x,y1,'k-')
hold on
y2=sin(x.^2);
plot(x,y2,'b--')
title('Plot of y1= cos(3x) and y2=sin(x^2)')
xlabel('x')
ylabel('y')
legend('y1','y2')
axis([0 6 -1 1])

%Assignment 3 Exercise 2
clc
clear all
% Part a)
% Defining the vectors
t=[0 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40];
v=[0 2 5 9 15 22 29 36 44 52 59 65 70 74 76 76 74 69 61 50 36];
plot(t,v,'o');
xlabel('t(sec)');
ylabel('v(mph)');
legend('v-t relationship');
% End of Part a.

%Start of Part b)
F=inline('b(1).*t.^2 +b(2).*t+b(3)','b','t');
b=nlinfit(t,v,F,[0 0 0]);
v_p=b(1).*t.^2 +b(2).*t+b(3);
%End of Part b.

%Start of Part c)
figure(2);
subplot(1,2,1);
plot(t,v,'o',t,v_p)
hold on
xlabel('t(sec)');
ylabel('v(mph)');
title('Q2.c');
legend('v','v_p');
%End of Part c.

%Start of Part d)
F=inline('b(1).*t.^3 +b(2).*t.^2+b(3).*t+b(4)','b','t');
b=nlinfit(t,v,F,[0 0 0 0]);
v_p=b(1).*t.^3 +b(2).*t.^2+b(3).*t+b(4);
subplot(1,2,2)
plot(t,v,'o',t,v_p)
xlabel('t(sec)');
ylabel('v(mph)');
title('Q2.d');
legend('v','v_p');
%End of Part d.

%Start of Part e)
vec_b=b
Der= polyder(vec_b)
a=b(1).*t.^2 +b(2).*t+b(3);
a=a./3600;
subplot(1,2,1)
plot(t,a,'>')
xlabel('t(sec)');
ylabel('a(km/h/s)');
title('Q2.e');
%End of Part e.

% Start of Part f)
polyint(vec_b)
s=b(1).*t.^4 +b(2).*t.^3+b(3).*t.^2+b(4).*t;
s=s./3600;
subplot(1,2,2)
plot(t,s,'>')
xlabel('t(sec)');
ylabel('s(km/h*s)');
title('Q2.f');
%End of Part f


