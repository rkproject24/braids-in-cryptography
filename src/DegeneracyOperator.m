function v=DegeneracyOperator(n,b,k)
%%n--number of strands
%%b--braid word
%%k--the strand which is doubled

v = [];
p=1:n; 
[tmp l]=size(b);

for i=1:l
    p=permutation(n,b(i),p);
    c= abs(b(i));j=1;
    while p(j)~=k
        j=j+1;
    end
    if j<c
        v=[v sign(b(i))*(c+1)];
    elseif j==c
        v=[v b(i) sign(b(i))*(c+1)];
    elseif j==c+1
        v=[v sign(b(i))*(c+1) b(i)];
    elseif j>c+1
        v=[v b(i)];
    end
end

v=cancelall(v);
fprintf('Double the %dth strand, the result is:',k)