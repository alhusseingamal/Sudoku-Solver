%Sudoku,Islam Amr Abdelmoneim Mohamed,1200487,islam.mohamed02@eng-st.cu.edu.eg
function c=checkcolumn(x,num,loc)
c=0;
for p=1:9
    if num==x(p,loc(2))
        c=c+1;
    end
end
end