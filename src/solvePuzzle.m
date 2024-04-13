%Sudoku,Alhussein Gamal Hussein Ali, «·Õ”Ì‰ Ã„«· Õ”Ì‰ ⁄·Ì, 1200399,
%alhussein.ali02@eng-st.cu.edu.eg
function x=solvePuzzle(x)
[r,c]=size(x);
u=identifyMissingIndices(x);
W=zeros(9);N=1;
Full=checkFull(x);
while Full==0
for i=1:9
    for j=1:9
        R=identifyMissingNumbers_R(x,i);
        C=identifyMissingNumbers_C(x,j);
        v=CompareAndEliminate(R,C);
        A=checkBox(x,v,i,j,u);
        if length(A)==1
            x(i,j)=A;
        end
        u=identifyMissingIndices(x);
        for k=1:length(A)
            W(N,k)=A(k);
        end
        N=N+1;
        Full=checkFull(x);
    end
end
end
end
