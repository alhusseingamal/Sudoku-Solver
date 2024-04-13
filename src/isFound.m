%Alhussein Gamal Hussein Ali, ÇáÍÓíä ÌãÇá ÍÓíä Úáí, 1200399,
%alhussein.ali02@eng-st.cu.edu.eg
function t=isFound(MIndices,a,b)%x is a (n,2)array
[r c]=size(MIndices);c=0;
for i=1:r
        if a==MIndices(i,1) && b==MIndices(i,2)
            c=c+1;
        end
end
    if c>0
        t=1;
    else
        t=0;
    end
end

    