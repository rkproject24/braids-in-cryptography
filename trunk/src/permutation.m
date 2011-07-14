%n is the number of strands, i represents the generator, p is a permutation
%of n elements
function [p] = permutation(n,i,p)

i= abs(i);
l=p(i);
p(i)=p(i+1);
p(i+1)=l;