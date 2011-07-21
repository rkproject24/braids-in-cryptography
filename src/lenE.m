function lh=lenE(a,n,prmdata)
[pos,ndelta] = deltapos(n,a);
perm = left_normal(n,permutations(n,pos), prmdata);
while(perm(1,:)==[4 3 2 1])
    perm(1,:)=[];
end
lh=size(perm,1);
