%Alhussein Gamal Hussein Ali, ÇáÍÓíä ÌãÇá ÍÓíä Úáí, 1200399,
%alhussein.ali02@eng-st.cu.edu.eg
function v = CompareAndEliminate(x,y)
v=[];
k=1;
if length(y) >= length(x)
    Arr1=x; Arr2=y;
else
    Arr1=y; Arr2=x;
end
for i=1:length(Arr1)
    for j=1:length(Arr2)
        if Arr2(j)== Arr1(i)
            v(k)=Arr1(i);
            k=k+1;
        end
    end
end

end
    
