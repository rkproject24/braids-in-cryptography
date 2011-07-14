%draws Artin's generator
function []=draw_artin_generator(n,l,k,p)
%n is the number of strands
%l is the length of the braid word
%k= plus minus 1 2 ... n-1
%p is the position from top

gap=0.4; %size for the gap of a strand that goes under another strand

if abs(k)<100
    position=abs(k);
else
    position=abs(k)-100;
end

unit_x=1/(n-1);
unit_y=1/l;
initial_position_y=1-p*unit_y;

%drawing straight lines:---
for i=0:position-2
    plot([i*unit_x i*unit_x], [initial_position_y initial_position_y+unit_y], 'LineWidth',2)
end
for i=position+1:n-1
    plot([i*unit_x i*unit_x], [initial_position_y initial_position_y+unit_y], 'LineWidth',2)
end
%---------------------------

%now the crossing comes:---
a=(position-1)*unit_x; 
b=position*unit_x;
c=initial_position_y;
d=initial_position_y+unit_y;

C=pi/(d-c); D=-pi*d/(d-c);
A=(a+b)/2; B=(a-b)/2;

if (k>0)&&(k<100)
    y=c:gap.*(d-c)/100:c+gap*(d-c);
    x=A+B.*cos(C.*y+D);
    plot(x,y, 'LineWidth',2);
    y=d-gap*(d-c):gap.*(d-c)/100:d;
    x=A+B.*cos(C.*y+D);
    plot(x,y, 'LineWidth',2);
    y=c:(d-c)/100:d;
    x=A-B.*cos(C.*y-D);
    plot(x,y, 'LineWidth',2);
elseif (k<0)&&(k>-100)
    y=c:gap.*(d-c)/100:c+gap*(d-c);
    x=A-B.*cos(C.*y+D);
    plot(x,y, 'LineWidth',2);
    y=d-gap*(d-c):gap.*(d-c)/100:d;
    x=A-B.*cos(C.*y+D);
    plot(x,y, 'LineWidth',2);
    y=c:(d-c)/100:d;
    x=A+B.*cos(C.*y+D);
    plot(x,y, 'LineWidth',2);
else
    y=c:(d-c)/100:d;
    x=A+B.*cos(C.*y+D);
    plot(x,y, 'LineWidth',2);
    y=c:(d-c)/100:d;
    x=A-B.*cos(C.*y-D);
    plot(x,y, 'LineWidth',2);
    plot((a+b)/2,(c+d)/2,'o','MarkerFaceColor','b','Color','k');
end