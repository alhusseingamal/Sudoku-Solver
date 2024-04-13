%Sudoku,Islam Amr Abdelmoneim Mohamed,1200487,islam.mohamed02@eng-st.cu.edu.eg
function x=Newtable(y)
for i=1:9
    for j=1:9
        if isnan(y(i,j))         
            x(i,j)=0;
        else
            x(i,j)=y(i,j);
        end
    end
end
end