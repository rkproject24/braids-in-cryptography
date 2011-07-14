function [keya] = AliceDencrypt2(data,a,b,indx,ay,dflag)

disp('Alice: calculating key...')
x=a(indx,find(a(indx,:)));
keya = [inverse(x) ay(indx,find(ay(indx,:)))];
keya=normalform(data.n,keya,data.data);
keya=keya(find(keya>0));
disp(['key=' braid_word(keya,'\sigma')])
drawfigure('Alice',dflag,'key',keya,data.n)