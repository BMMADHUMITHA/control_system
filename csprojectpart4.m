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
e=series(ga,h);
sys3=feedback(gp,2.2865*e)
%margin(sys3);
nyquist(sys3);
