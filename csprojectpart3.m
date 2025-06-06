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
%system 3
e=series(ga,h);
nadd=[1,1]
dadd=[1,0]
add=tf(nadd,dadd)
f=series(gp,.5*add)
sys3=feedback(f,2.2865*e)
rlocus(sys3)
%step(sys3)

