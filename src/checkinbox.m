%Sudoku,Islam Amr Abdelmoneim Mohamed,1200487,islam.mohamed02@eng-st.cu.edu.eg
function b=checkinbox(x,num,rowNo,colNo)
b=0;
for k=rowNo:rowNo+2
    for m=colNo:colNo+2
        if num==x(k,m)
            b=b+1;
        end
    end
end
end