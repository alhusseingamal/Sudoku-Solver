%Sudoku,Islam Amr Abdelmoneim Mohamed,1200487,islam.mohamed02@eng-st.cu.edu.eg
function [num,loc]=play( )
num=input('What number do you want to add: ');
while num<1 || num>9
    fprintf('Error! Numbers that can be added are from 1 to 9 only\n')
    num=input('What number do you want to add: ');
end
i=1;
loc=input('Where do you want to add this number [i j]: ');
while loc(i)<1 || loc(i+1)<1 || loc(i)>9 || loc(i+1)>9
    fprintf('Error! Number for [i j] must be between 1 and 9 inclusive\n')
    loc=input('Where do you want to add this number (i,j): ');
end
end