function [pos] = permutation_number(n,p)
pos=1;
for i=1:length(p)-1
    pos=pos+(p(1)-1) * factorial(n-1);
    ind = find(p>p(1));
    p(ind)=p(ind)-1;    
    p=p(2:end);
    n=n-1;
end