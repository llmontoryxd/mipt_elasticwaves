% |Ker(exp)-J1(t)/t|<0.00004 for coef16.dat
% |Ker(exp)-J1(t)/t|<0.00003 for coef17.dat
% |Ker(exp)-J1(t)/t|<0.000004 for coef33.dat
% |Ker(exp)-J1(t)/t|<0.0000005 for coef65.dat
% clear all
figure
fid='coef65.dat';
  coef=load(fid);
  al=coef(:,1)+1i*coef(:,2);
  bl=coef(:,3)+1i*coef(:,4);     
  tt=[0.001:1:15000];
  N=size(tt);
  r1=(al.')*exp(bl*tt);
  r2= besselj(1,tt)./tt;
  plot(tt,real(r1)-r2)