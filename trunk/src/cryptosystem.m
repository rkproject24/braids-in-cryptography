close all
clear all

disp('Ko et al. protocol')
disp(' ')
%%data
s=open('dataN3.mat');
data=s.dataN3;

%%parameters
%if dflag=1 every braid will be dispayed in figure
dflag=0;
n=data.n;
prmdata=data.data;
L=round(n/2);
gLength=4;
aLenght=4;
bLenght=4;
g = randi(n-1,1,gLength);

disp('Encryption...')
%%encryption
[a,aga]=AliceEncrypt(data,L,g,aLenght,dflag);
[b,bgb]=BobEncrypt(data,L,g,bLenght,dflag);
disp(' ')
disp('Decryption...')
%decryption
keya = AliceDencrypt(data,a,bgb,dflag);
keyb = BobDencrypt(data,b,aga,dflag);
keye = EveDencrypt(data,aga,bgb,g,dflag);
keye1 = EveDencrypt1(data,aga,bgb,g,dflag);
