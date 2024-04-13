%Sudoku,Alhussein Gamal Hussein Ali, «·Õ”Ì‰ Ã„«· Õ”Ì‰ ⁄·Ì, 1200399,
%alhussein.ali02@eng-st.cu.edu.eg
function c=checkFull(x)
c=1;
for i=1:9
    for j=1:9
        if x(i,j)==0
            c=0;
        end
    end
end
end