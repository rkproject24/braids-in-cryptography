function [keye] = EveDencrypt1(data,aga,bgb,g,dflag)
n=data.n;
prmdata=data.data;
disp('Eve: calculating a...')
t1=tic;
[flag,a]=recDecrypt(n, prmdata, aga, g, []);
time=toc(t1)

drawfigure('Eve',dflag,'a',a,n)
disp('Eve: calculating key...')
keye=[inverse(a) bgb a];
keye=normalform(data.n,keye,data.data);
keye=keye(find(keye>0));

disp(['key=' braid_word(keye,'\sigma')])
drawfigure('Eve',dflag,'key',keye,data.n)
