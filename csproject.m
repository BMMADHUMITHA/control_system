clc;
close all;
clear all;
ngp=[0.1];
dgp=[1,1,0];
gp=tf(ngp,dgp);
nh=[100];
dh=[1,20,100];
h=tf(nh,dh)
s2=[1,0,0];
s3=tf(1,s2);
nga=[10];
dga=[1,5];
ga=tf(nga,dga);
%system 1
a=series(25*ga,gp);
sys1= feedback(a,1)
stepinfo(sys1)
figure(1)
pzmap(sys1)
grid on;
figure(2)
step(sys1)
figure(3)
impulse(sys1)
%system 2
ngpnew=[.1,0,0];
dgpnew=[1,1,0];
gpnew=tf(ngpnew,dgpnew);
b=series(12*ga,gpnew)
c=series(s3,h)
d=feedback(b,c);
sys2= series(d,s3)
stepinfo(sys2)
figure(4)
pzmap(sys2)
grid on;
figure(5)
step(sys2)
figure(6)
impulse(sys2)
%system 3
e=series(ga,h);
sys3=feedback(gp,2.2865*e)
stepinfo(sys3)
figure(7)
pzmap(sys3)
grid on;
figure(8)
step(sys3)
figure(9)
impulse(sys3)