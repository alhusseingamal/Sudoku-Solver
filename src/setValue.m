%Sudoku,Alhussein Gamal Hussein Ali, ������ ���� ���� ���, 1200399,
%alhussein.ali02@eng-st.cu.edu.eg
function y=setValue(IBoard,x,num,loc)
        r=checkrow(x,num,loc);
        c=checkcolumn(x,num,loc);
        [rowNo colNo]=IdentifyBox(loc);
        b=checkinbox(x,num,rowNo,colNo);
        y=checknumber(IBoard,x,num,r,c,b,loc);
end