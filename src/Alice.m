
s=open('dataN3.mat');
n=s.dataN3.n;
prmdata=s.dataN3.data;

L=round(n/2);
gLength=1;
aLength=1;
bLength=1;


g = randi(n-1,1,gLength);

a = randi(n-3,1,aLength)+1;
ina = find(a>L-1);
a(ina)=a(ina)-2*L+1;

b = randi(n-3,1,aLength)+2;
inb = find(b<=L);
b(inb)=-2*L+b(inb)-1;

aga = normalform(n,[inverse(a) g a],prmdata);
bgb = normalform(n,[inverse(b) g b],prmdata);

keya = [inverse(a) bgb a];

keyb = [inverse(b) aga b];

keya=normalform(n,keya,prmdata)

keyb=normalform(n,keyb,prmdata)
eq = all(keya==keyb)
