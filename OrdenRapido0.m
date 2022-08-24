function v=OrdenRapido0(v)
%ordena un vector aplicando 'divide y vencerás'

n=length(v);
l=[];
r=[];
pivote=v(1);

for i=2:n
    if v(i)<=pivote
        l=[l,v(i)];
    else
        r=[r, v(i)];
    end
end

if length(l)<=1
    if length(r)>1
        r2=OrdenRapido0(r);
        v=[l,pivote,r2];
    else
        v=[l, pivote, r];
    end
elseif length(r)<=1
    l2=OrdenRapido0(l);
    v=[l2, pivote, r];
else
    l2=OrdenRapido0(l);
    r2=OrdenRapido0(r);
    v=[l2, pivote, r2];
end



        