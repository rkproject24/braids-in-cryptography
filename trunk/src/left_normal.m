function [p] = left_normal(n,p,prmdata)

%remove [1 2 3 4], repetitions fixed point, diorthwsi Delta
for rep=1:50
[i,ii]=size(p);

while(i>1)
    [c,p(i-1,:),p(i,:)]=left_normal_permutations(n,p(i-1,:),p(i,:),prmdata);
    if ~c
        i=i-1;
    end
end
end


i=size(p,1);

v=[];
for j=1:i
    if (p(j,:)==[1 2 3 4])
        v=[v j];
    end
end

p(v,:)=[];


