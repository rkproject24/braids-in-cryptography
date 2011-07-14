function p = transformpermutation(p,n)

for i = 1:length(p)
    if (p(i)>n) 
        p(i)=p(i)-1;
    end
end