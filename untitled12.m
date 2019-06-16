x=1:250;

c1=-0.11*exp(-(x-58).^2.*(0.037*(x<=58)+0.01*(x>58)));
c2=0.99*exp(-(x-77).^2.*(0.031*(x<=77)+0.055*(x>77)));
c3=-0.19*exp(-(x-89).^2.*(0.04*(x<=89)+0.006*(x>89)));
c4=-0.12*exp(-(x-122).^2.*(0.0001*(x<=122)+0.004*(x>122)));
c5=0.22*exp(-(x-195).^2.*(0.001*(x<=195)+0.0033*(x>195)));

C=c1+c2+c3+c4+c5;

figure(1)
plot(x,C)