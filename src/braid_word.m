%this function takes a vector b and a string a as inputs and returns the
%expression for the braid word. For eg. braid_word([1 -1 3 3],'\sigma')
%returns '\sigma_1\sigma_{-1}\sigma_3^2.
function [s] = braid_word(b,a)


[tmp l]=size(b); s=[]; j=1;

if l==0
    s='the identity braid';
elseif l==1
    s = append(s,b(1),1,a);
else
    for i=1:(l-1)
        if (b(i)==b(i+1))
            j=j+1;
            if i ~= l-1
                continue;
            end
        end
        if (j==1)&&(i ~= l-1)
            s = append(s,b(i),1,a);
        elseif (j==1)&&(i==l-1)
            s = append(s,b(i),1,a);
            s = append(s,b(i+1),1,a);
        elseif (j>1)&&(i ~= l-1)
            s = append(s,b(i),j,a);
            j=1;
        elseif (j>1)&&(i==l-1)
            if (b(i)==b(i+1))
                s = append(s,b(i),j,a);
            else
                s = append(s,b(i),j,a);
                s = append(s,b(i+1),1,a);
            end
        end
    end
end


