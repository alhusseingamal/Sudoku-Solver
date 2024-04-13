%Sudoku,Islam Amr Abdelmoneim Mohamed,1200487,islam.mohamed02@eng-st.cu.edu.eg
clc
clear
ex=xlsread('Sud.xlsx','Sheet1');
Chex=xlsread('Sud.xlsx','Sheet2');
Table=Newtable(ex);
ChTable=Newtable(Chex);
while 1
    Sud=DisplayGrid(Table);
    w=0;
for i=1:9
    for j=1:9
        if Table(i,j)==0
            w=w+1;
        end
    end
end
if w==0
    fprintf('Congratulations! You completed the Sudoku\n')
    break
end
    [num,loc]=play( );
    r=checkrow(Table,num,loc);
    c=checkcolumn(Table,num,loc);
    [rowNo,colNo]=IdentifyBox(loc);
    [g]=checkbox(Table,num,rowNo,colNo);
    Table=checknumber(loc,g,r,c,ChTable,num,Table);
end
