function [keyb] = BobDencrypt2(data,a,b,indy,bx,dflag)

disp('Bob: calculating key...')
y=b(indy,find(b(indy,:)));
keyb = inverse([inverse(y) bx(indy,find(bx(indy,:)))]);
keyb=normalform(data.n,keyb,data.data);
keyb=keyb(find(keyb>0));
disp(['key=' braid_word(keyb,'\sigma')])
drawfigure('Bob',dflag,'key',keyb,data.n)