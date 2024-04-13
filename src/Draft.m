clc
clear
IBoard=xlsread('Sud.xlsx','Sheet1');
x=IBoard;hintCount=0;
DisplayGrid(x);
c=prompt();
if c=='p'
    [num loc]=play();
    x=setValue(IBoard,x,num,loc);
    c=prompt();
elseif c=='s'
    x=solvePuzzle(IBoard);
    DisplayGrid(x);
    c=prompt();
elseif c=='h'
    x=hint(x);hintCount=hintCount+1;
    clc
    DisplayGrid(x);
    c=prompt();
elseif c=='r'
    x=IBoard;
    DisplayGrid(IBoard);
    c=prompt();
else
    break;
end
while c=='p'
    [num loc]=play();
    x=setValue(IBoard,x,num,loc);
    c=prompt();
    clc
    DisplayGrid(x);
end
while c=='s'
    x=solvePuzzle(IBoard);
    clc
    DisplayGrid(x);
    fprintf('That is the solution of the puzzle.\n')
    c=input('Press p to play\nPress s to solve\nPress h for hint\nPress r to reset\nPress q to quit\n','s');
end
while c=='h'
    if hintCount<3
        hintCount=hintCount+1;
        x=hint(x);
        clc
        DisplayGrid(x);
        c=prompt();
    else
        fprintf('You cannot use Hint more than 3 times.\n');
        c=input('Press p to play\nPress s to solve\nPress h for hint\nPress r to reset\nPress q to quit\n','s');
    end
end
while c=='r'
    x=IBoard; hintCount=0;
    clc
    DisplayGrid(IBoard);
    c=prompt();
end
while c~='q' 
    f=checkFull(x);
    if f==1 && x==solvePuzzle(IBoard) && c~='s'
        fprintf('Congratulations! You completed the Sudoku.\n')
        break;
    elseif f==1 && x~=solvePuzzle(IBoard) 
        fprintf('Sorry! Incorrect Solution.\n')
        prompt(x);
    end
end