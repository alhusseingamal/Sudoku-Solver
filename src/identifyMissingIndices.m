%Sudoku,Alhussein Gamal Hussein Ali, «·Õ”Ì‰ Ã„«· Õ”Ì‰ ⁄·Ì, 1200399,
%alhussein.ali02@eng-st.cu.edu.eg
function u=identifyMissingIndices(x)
u=[];
k=1;
for i=1:9
    [U UIndex]=identifyMissingNumbers_R(x,i);
    [r c]=size(UIndex);
    for j=1:r
        u(k,1)=UIndex(j,1);u(k,2)=UIndex(j,2);
        k=k+1;
    end
end
end