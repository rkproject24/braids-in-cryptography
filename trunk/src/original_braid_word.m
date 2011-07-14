function [s] = original_braid_word(b)

[tmp l]=size(b); s=[];

if (l==0) 
    s='the identity braid'; 
else 
    for i=1:l 
        if (b(i)>0)
            s=[s '\sigma_' int2str(b(i))];
        elseif (b(i)<0)
            s=[s '\sigma_' int2str(-b(i)) '^{-1}'];
        end
    end
end    