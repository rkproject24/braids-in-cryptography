function [] =justdraw(v,n)
    figure
    title([braid_word(v,'\sigma') ])
    hold on;
    axis([-0.1 1.1 -0.1 1.1]);
    draw_braid(n,v);
    axis off
