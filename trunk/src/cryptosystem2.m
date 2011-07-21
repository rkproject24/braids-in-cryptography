close all
clear all
disp('Anshel et al. Protocol')
disp(' ')
%%data
s=open('dataN3.mat');
data=s.dataN3;

%%parameters
%if dflag=1 every braid will be dispayed in figure
dflag=0;
n=data.n;
prmdata=data.data;
k=20; %randi(10,1,1);
m=20; %randi(10,1,1);
a=randi(2*n-2,k,3)-n+1;
b=randi(2*n-2,m,3)-n+1;

disp('Encryption...')
%%encryption
[xind,bx]=AliceEncrypt2(data,a,b,dflag);
[yind,ay]=BobEncrypt2(data,a,b,dflag);
disp(' ')
disp('Decryption...')
%decryption
keya = AliceDencrypt2(data,a,b,xind,ay,dflag);
keyb = BobDencrypt2(data,a,b,yind,bx,dflag);
keye = EveDencrypt2(data,a,b,ay,bx,dflag);
