function [keye] = EveDencrypt2(data,a,b,ay,bx,dflag)
n=data.n;
prmdata=data.data;
disp('Eve: calculating x...')
[flagx,x]=recDecrypt(n, prmdata, bx(1,find(bx(1,:))), b(1,find(b(1,:))), []);
disp('Eve: calculating y...')
[flagy,y]=recDecrypt(n, prmdata, ay(1,find(ay(1,:))), a(1,find(a(1,:))), []);
drawfigure('Eve',dflag,'x',x,n)
disp('Eve: calculating key...')
keye = [inverse(x) inverse(y) x y ];
keye=normalform(data.n,keye,data.data);
keye=keye(find(keye>0));
disp(['key=' braid_word(keye,'\sigma')])
drawfigure('Eve',dflag,'key',keye,data.n)
