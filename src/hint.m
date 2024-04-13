%Sudoku,Alhussein Gamal Hussein Ali, «·Õ”Ì‰ Ã„«· Õ”Ì‰ ⁄·Ì, 1200399,
%alhussein.ali02@eng-st.cu.edu.eg
function u=hint(x)
u=x;
z=solvePuzzle(x);
y=randperm(9);
u(y(1),y(2))= z(y(1),y(2));
while x(y(1),y(2))~=0
    y=randperm(9);
    if u(y(1),y(2))==0
    u(y(1),y(2))= z(y(1),y(2));
    break;
    end
end
end
