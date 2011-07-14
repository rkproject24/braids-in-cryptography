%output inverse of input braid
function [v]=inverse(b)
v = [ ];
a=length(b);
for i=1:a
    v = [v -b(a-i+1)];
end