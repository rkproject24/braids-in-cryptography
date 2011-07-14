function [yind,ay] = BobEncrypt2(data,a,b,dflag)

n = data.n;
prmdata=data.data;
m=size(b,1);

disp('Bob: chossing y...')
yind=randi(m,1,1);
y=b(yind,:);
y=y(find(y));
disp(['y=b_{' int2str(yind) '}=' braid_word(y,'\sigma')])

drawfigure('Bob',dflag,'y',y,n)
disp('Bob: calculating a_i^{y}...')
k=size(a,1);
sz=[];
for i=1:k
    sz(i) = size(normalform(n,[inverse(y) a(i,find(a(i,:))) y],prmdata),1);
end
ay=zeros(k,max(sz));
for i=1:k
    tmp=normalform(n,[inverse(y) a(i,find(a(i,:))) y],prmdata);
    ay(i,1:length(tmp))=tmp;
end
for i=1:k
    disp(['a_{' int2str(i) '}^{y}=' braid_word(a(i,find(a(i,:))),'\sigma')])
    drawfigure('Bob',dflag,['a_{' int2str(i) '}^{y}'],a(i,find(a(i,:))),n)
end