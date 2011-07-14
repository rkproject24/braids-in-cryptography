function [p] = delta(n)
p=[];
for i=n-1:-1:1
    for j = 1:i
        p=[p j];
    end
end