function [xind,bx] = AliceEncrypt2(data,a,b,dflag)

n = data.n;
prmdata=data.data;
k=size(a,1);

disp('Alice: chossing x...')
xind=randi(k,1,1);
x=a(xind,:);
x=x(find(x));
disp(['x=a_{' int2str(xind) '}=' braid_word(x,'\sigma')])

drawfigure('Alice',dflag,'x',x,n)
disp('Alice: calculating b_i^{x}...')
m=size(b,1);
sz=[];
for i=1:m
    sz(i) = size(normalform(n,[inverse(x) b(i,find(b(i,:))) x],prmdata),2);
end
bx=zeros(m,max(sz));
for i=1:m
    tmp=normalform(n,[inverse(x) b(i,find(b(i,:))) x],prmdata);
    bx(i,1:length(tmp))=tmp;
end
for i=1:m
    disp(['b_{' int2str(i) '}^{x}=' braid_word(b(i,find(b(i,:))),'\sigma')])
    drawfigure('Alice',dflag,['b_{' int2str(i) '}^{x}'],b(i,find(b(i,:))),n)
end