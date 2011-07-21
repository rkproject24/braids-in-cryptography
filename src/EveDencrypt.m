function [keye] = EveDencrypt(data,aga,bgb,g,dflag)
n=data.n;
prmdata=data.data;
h = aga;
nfh = aga;
m=[];

disp('Eve: calculating a with brute force...')
t1=tic;
sm=1;
flag=1;
i=0;
while (flag)
    m=[[helpar(sm,-3) m];[helpar(sm,-2) m]; [helpar(sm,-1) m]; [helpar(sm,1) m] ; [helpar(sm,2) m] ;[helpar(sm,3) m]];
    sm=size(m,1);
    j=1;
    while(flag && j<=sm)
        nf=normalform(n,[inverse(m(j,:)) g m(j,:)],prmdata);
%        nfh
        if length(nfh)==length(nf)
            if all(nf==nfh)
                flag=0;
%                m(j,:)
            else
                j=j+1;
            end
        else
               j=j+1;
        end
    end
    i=i+1;
end
time=toc(t1)
a = m(j,:)

drawfigure('Eve',dflag,'a',a,n)
disp('Eve: calculating key...')
keye=[inverse(a) bgb a];
keye=normalform(data.n,keye,data.data);
keye=keye(find(keye>0));

disp(['key=' braid_word(keye,'\sigma')])
drawfigure('Eve',dflag,'key',keye,data.n)

