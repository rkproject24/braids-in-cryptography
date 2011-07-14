function [a,aga] = AliceEncrypt(data,L,g,aLength,dflag)

n = data.n;
prmdata=data.data;

disp('Alice: chossing a...')
a = randi(n-3,1,aLength)+1;
ina = find(a>L-1);
a(ina)=a(ina)-2*L+1;
disp(['a=' braid_word(a,'\sigma')])
drawfigure('Alice',dflag,'a',a,n)
disp('Alice: calculating a^{-1}ga...')
aga = normalform(n,expbraid(g,a),prmdata);
disp(['a^{-1}ga=' braid_word(aga,'\sigma')])
drawfigure('Alice',dflag,'a^{-1}ga',aga,n)