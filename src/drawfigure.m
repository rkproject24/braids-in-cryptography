function [] =drawfigure(who,dflag,vname,v,n)
if dflag
    figure
    title([who ': ' vname '=' braid_word(v,'\sigma') ])
    hold on;
    axis([-0.1 1.1 -0.1 1.1]);
    draw_braid(n,v);
    axis off
end