%Sudoku,Islam Amr Abdelmoneim Mohamed,1200487,islam.mohamed02@eng-st.cu.edu.eg
function r=checkrow(x,num,loc)
r=0;
for n=1:9
    if num==x(loc(1),n)
        r=r+1;
    end
end
end