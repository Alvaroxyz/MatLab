x=-10:0.1:10;

for j=1:length(x)
    if x(j)<-pi
        f(j)=abs(x(j))+1;
    elseif -pi<=x(j)%En el caso en que -pi<=x<=pi es necesario establecer 
        % los dos casos por separado para que matlab evalúe cada condición
        if x(j)<=pi
            f(j)=x(j)*sin(x(j));
        else
            f(j)=x(j)*x(j)-3*x(j)+2;
        end
    end
end

plot(x,f);