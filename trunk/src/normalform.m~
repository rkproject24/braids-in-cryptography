function [nf] = normalform(n,b,prmdata)
nf=[];
[pos,ndelta] = deltapos(n,b);
%pos

%pos = permutations(n,pos);
perm = left_normal(n,permutations(n,pos), prmdata);

while(perm(1,:)==[4 3 2 1])
    perm(1,:)=[];
    ndelta=ndelta+1;
end
d=inverse(delta(n));

for i=1:ndelta
    nf = [nf d];
end


[s,c]=size(perm);
for i = 1:s
    nf = [nf prmdata(permutation_number(n,perm(i,:))).braid];
end