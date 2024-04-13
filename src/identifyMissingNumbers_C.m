%Sudoku,Alhussein Gamal Hussein Ali, «·Õ”Ì‰ Ã„«· Õ”Ì‰ ⁄·Ì, 1200399,
%alhussein.ali02@eng-st.cu.edu.eg
function [M Mindex] = identifyMissingNumbers_C(x,colNo)
M=[]; Mindex=[]; A=[1,2,3,4,5,6,7,8,9];
k=1;g=1;l=1;
for i=1:9
    if x(i,colNo) == 0
        Mindex(l,1)=i;
        Mindex(l,2)=colNo;
        l=l+1;
    end
end
for i=1:9
    for j=1:length(A)
        if A(j)==x(i,colNo)
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

    