function [d,delta] = deltapos(n,b)
delta = 0;
d =[];

for i = length(b):-1:1
    if (b(i)<0)
        if (mod(delta,2)==0)
            d=[ipermutation(n,-b(i)) d];
        else
            d=[n-ipermutation(n,-b(i)) d];
        end
        delta = delta+1;
    else
        if (mod(delta,2)==0)
            d=[b(i) d];
        else
            d=[n-b(i) d];
        end
    end
end


