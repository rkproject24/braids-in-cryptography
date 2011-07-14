function [output] = ipermutation(n,i)

output = [];
for ii = n-1:-1:i+1
    for j=1:ii
        output = [output j];
    end
end
for ii = 1:i-1
    for j = i:-1:ii
    output = [output j];
    end
end
