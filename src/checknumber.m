%Sudoku,Islam Amr Abdelmoneim Mohamed,1200487,islam.mohamed02@eng-st.cu.edu.eg
function x=checknumber(IBoard,x,num,r,c,b,loc)
if IBoard(loc(1),loc(2))~=0   
    fprintf('Error! This number cannot be replaced\n')
elseif b==0 && r==0 && c~=0
    fprintf('This number is alraedy present in column %d\n',loc(2))
elseif b==0 && r~=0 && c==0
    fprintf('This number is already present in row %d\n',loc(1))
elseif b~=0 && r==0 && c==0
    fprintf('This number is already present in the 3x3 box\n')
elseif b==0 && r~=0 && c~=0
    fprintf('This number is alraedy presnt in row %d and column %d\n',loc(1),loc(2))
elseif b~=0 || r~=0 || c~=0
    fprintf('This number cannot be placed here\n')
elseif b==0 && r==0 && c==0
    x(loc(1),loc(2))=num;
    xlswrite('Sud.xlsx',x)
end
end