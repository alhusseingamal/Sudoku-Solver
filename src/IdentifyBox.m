%Sudoku,Islam Amr Abdelmoneim Mohamed,1200487,islam.mohamed02@eng-st.cu.edu.eg
%Alhussein Gamal Hussein Ali, «·Õ”Ì‰ Ã„«· Õ”Ì‰ ⁄·Ì, 1200399,
%alhussein.ali02@eng-st.cu.edu.eg
function [rowNo,colNo]=IdentifyBox(loc)
if loc(1)<=3
    rowNo=1;
elseif loc(1)<=6
    rowNo=4;
else 
    rowNo=7;
end
if loc(2)<=3
    colNo=1;
elseif loc(2)<=6
    colNo=4;
else 
    colNo=7;
end
end
