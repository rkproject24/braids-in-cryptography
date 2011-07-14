function [b,bgb] = BobEncrypt(data,L,g,bLength,dflag)

n = data.n;
prmdata=data.data;

disp('Bob: chossing b...')
b = randi(n-3,1,bLength)+2;
inb = find(b<=L);
b(inb)=-2*L+b(inb)-1;
disp(['b=' braid_word(b,'\sigma')])
drawfigure('Bob',dflag,'b',b,n)
disp('Bob: calculating b^{-1}gb...')
bgb = normalform(n,[inverse(b) g b],prmdata);
disp(['b^{-1}gb=' braid_word(bgb,'\sigma')])
drawfigure('Bob',dflag,'b^{-1}gb',bgb,n)