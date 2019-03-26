kd=9.9*10^-3;
w1=0.26;
w2=300;
K=0.3;
n=1.5;
x=0.0001:0.001:10;
f_I=(x.^n)./(K+x.^n);
u=((w1+w2.*f_I))./(1+w1+w2.*f_I);
rL=0.08571.*((4.223*10^-4.*u)./(45.6+1.8*4.223*10^-4.*u));
y=rL./(kd);
semilogx(x,y)
xlabel('inducer I (mM)');
ylabel('protein concentration(uM)');