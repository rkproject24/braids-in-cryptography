function [keya] = AliceDencrypt(data,a,eb,dflag)

disp('Alice: calculating key...')
keya =  expbraid(eb,a);
keya=normalform(data.n,keya,data.data);
keya=keya(find(keya>0));
disp(['key=a^{-1}(b^{-1}gb)a=' braid_word(keya,'\sigma')])
drawfigure('Alice',dflag,'key',keya,data.n)