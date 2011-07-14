%appends the string 'a_n^m' to the end of the string s.
%if n==1, just append 'a_n',
%for eg. append('hello',3,2,'\sigma') returns the string 'hello\sigma_3^2'.
function [s]=append(s,n,m,a);

if (n>0)
    if (m==1)
        s=[s a '_{' int2str(n) '}'];
    else
        s=[s a '_{' int2str(n) '}' '^{' int2str(m) '}'];
    end
elseif (n<0)
    s=[s a '_{' int2str(-n) '}' '^{-' int2str(m) '}'];
end    
   