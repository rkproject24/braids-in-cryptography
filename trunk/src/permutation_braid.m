%final permutation of braid b with n strands 
function [p] = permutation_braid(n,b)

p=1:n; 
[tmp l]=size(b);

for i=1:l 
    p=permutation(n,b(i),p);
end
