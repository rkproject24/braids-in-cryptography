function [p] = permutations(n,b)

cross = zeros(n);
pos = [1:n];
p=[];
bb=[];
for i =1:length(b) 
    %try to do a move
    %pos(b(i))
    %pos(b(i)+1)
    if(cross(min(pos(b(i)), pos(b(i)+1)),max(pos(b(i)), pos(b(i)+1)))==0)
    else
        bb=[bb; i-1];
        p=[p; pos];
        pos = [1:n];
        cross = zeros(n);
    end
    cross(min(pos(b(i)), pos(b(i)+1)),max(pos(b(i)), pos(b(i)+1)))=cross(min(pos(b(i)), pos(b(i)+1)),max(pos(b(i)), pos(b(i)+1)))+1;
        tmp=pos(b(i));
        pos(b(i)) = pos(b(i)+1);
        pos(b(i)+1)=tmp;
        
end
p=[p; pos];
bb=[bb;i];

