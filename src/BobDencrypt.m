function [keyb] = BobDencrypt(data,b,aga,dflag)
disp('Bob: calculating key...')
keyb = [inverse(b) aga b];
keyb=normalform(data.n,keyb,data.data);
keyb=keyb(find(keyb>0));

disp(['key=b^{-1}(a^{-1}ga)b=' braid_word(keyb,'\sigma')])
drawfigure('Bob',dflag,'key',keyb,data.n)
