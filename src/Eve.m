%function [] = Alice(n,L)

%%Alice's code
clear all 
close all
n = 4;
L = floor(n/2);
gL = 1;

g = (randi([1, n-1],[1 gL]));

%figure(1)
%clc;
%clf;
%hold on;
%title(['g choosed =',braid_word(g,'s')]);

%axis([-0.1 1.1 -0.1 1.1]);
%draw_braid(n,g);
%axis off


aliceL = 3;
a = randi([1, L-1], [1 aliceL]);

%figure(2)
%clc;
%clf;
%hold on;
%title(['Alice choosed a =',braid_word(a,'s')]);

%axis([-0.1 1.1 -0.1 1.1]);
%draw_braid(n,a);
%axis off

%compute a^-1 g a

aga =normalform(n,[inverse(a) g  a]);
h=aga;
lh = length(h);
lo = lh+1;
k=[];
nfx = normalform(n,g);
nfh = normalform(n,h);
while(lh<lo &&  ~isequal(nfx,nfh))
    mini=1;
    min = length(normalform(n,[1 h -1]));
    for i=2:n-1
        i
        len =length(normalform(n,[i aga -i])) 
           if (len< min)
                min = len;
                mini = i;
           end
    end
    h = [mini h -mini];
    nfh=normalform(n,h);
    lh = mini;
    if lh<lo
        k=[mini k];
    end
end
      
        


