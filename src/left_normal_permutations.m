function [changed,a,b]=left_normal_permutations(n,a,b,prmdata)
changed=0;
%i<-a<-p1 i+1<-b<-p2
p1=prmdata(permutation_number(n,a));
p2=prmdata(permutation_number(n,b));
%p2.startingSet
%p1.finishingSet
%(ismember(p2.startingSet,p1.finishingSet))
if ~all(ismember(p2.startingSet,p1.finishingSet))
    j=p2.startingSet(find(~ismember(p2.startingSet,p1.finishingSet),1));
    b=permutation_braid(n,[-j p2.braid]);
    a=permutation_braid(n,[p1.braid j]);
    changed=1;
end