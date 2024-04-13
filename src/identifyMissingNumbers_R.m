%Sudoku,Alhussein Gamal Hussein Ali, «·Õ”Ì‰ Ã„«· Õ”Ì‰ ⁄·Ì, 1200399,
%alhussein.ali02@eng-st.cu.edu.eg
function [M Mindex] = identifyMissingNumbers_R(x,rowNo)
M=[];Mindex=[]; A=[1,2,3,4,5,6,7,8,9];
k=1;g=1;l=0;
for i=1:9
    if x(rowNo,i) == 0
        l=l+1;
        Mindex(l,1)=rowNo;
        Mindex(l,2)=i;
    end
end
if l==0
    M=[];Mindex=[];
    return;
end
for i=1:9
    for j=1:length(A)
        if A(j)==x(rowNo,i)
            E(k)=A(j);
            k=k+1;
        end
    end
end
for i=1:length(A)
    c=0;
    for j=1:length(E)
        if A(i) == E(j)
            c=c+1;
        end
    end
    if c==0
       M(g)=A(i);
       g=g+1;
    end
end
end

    