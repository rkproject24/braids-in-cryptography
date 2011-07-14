function [nf] = normalform(n,b,prmdata)

nf=[];

[pos,ndelta] = deltapos(n,b);
%pos
d=inverse(delta(n));

for i=1:ndelta
    nf = [nf d];
end


%pos = permutations(n,pos);
perm = left_normal(n,permutations(n,pos), prmdata);
[s,c]=size(perm);
for i = 1:s
    nf = [nf prmdata(permutation_number(n,perm(i,:))).braid];
end