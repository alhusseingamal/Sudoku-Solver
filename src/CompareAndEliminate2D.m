%Alhussein Gamal Hussein Ali, ÇáÍÓíä ÌãÇá ÍÓíä Úáí, 1200399,
%alhussein.ali02@eng-st.cu.edu.eg
function v=CompareAndEliminate2D(x,y)
[r c]=size(x);
[n m]=size(y);
k=1;
if n >= r
    Arr1=x; Arr2=y;
else
    Arr1=y; Arr2=x;
end
[q w]=size(Arr1);
[t u]=size(Arr2);
if q==0 
    v=Arr2;
elseif t==0
    v=Arr1;
else
    v=[];
    return;
end
for i=1:q
    for j=1:w
        if Arr2(i,1)== Arr1(j,1) && Arr2(i,2)==Arr1(j,2)
            v(k,1)=Arr1(i,1);
            v(k,2)=Arr1(i,2);
            k=k+1;
        end
    end
end
end
