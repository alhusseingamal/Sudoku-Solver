%Alhussein Gamal Hussein Ali, «·Õ”Ì‰ Ã„«· Õ”Ì‰ ⁄·Ì, 1200399,
%alhussein.ali02@eng-st.cu.edu.eg
function [v vArray]=identifyIdenticalRows(x,rowNo1,rowNo2)
[r c]= size(x);c=0;k=1;vArray=[];
        for j=1:9
            if x(rowNo1,j)- x(rowNo2,j)==0
                c=c+1;
            end
            if x(rowNo1,j)~=0
                vArray(k)=x(rowNo1,j);
                k=k+1;
            end
        end
        if c==9
            v=1;
        else
            v=0;
        end
end
            