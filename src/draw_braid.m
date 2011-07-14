%draws a braid b with n strands
function []=draw_braid(n,b)

[tmp l]=size(b);  

for i=1:l
    draw_artin_generator(n,l,b(i),i)
end

if l==0
    for i=0:n-1
        plot([i/(n-1) i/(n-1)], [0 1], 'LineWidth',2)
    end
end

for i=0:n-1
    plot(i/(n-1),1,'o','LineWidth',2,'MarkerFaceColor','y');
    plot(i/(n-1),0,'o','LineWidth',2,'MarkerFaceColor','g');
end


