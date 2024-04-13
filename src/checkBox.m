%Sudoku,Alhussein Gamal Hussein Ali, «бЌ”нд ћг«б Ќ”нд Џбн, 1200399,
%alhussein.ali02@eng-st.cu.edu.eg
function a = checkBox(x,y,rowNo,colNo,q)
a=[];
if length(y)<2 && x(rowNo,colNo)==0
    a=y;
    return;
end
p=isFound(q,rowNo,colNo);
if p==0
    return;
end
[r c]=size(x); k=1;
[rowNo colNo]=IdentifyBox([rowNo colNo]);
for i=1:length(y)
    c=0;
    for j=rowNo:rowNo+2
        for l=colNo:colNo+2
            if x(j,l) ~=0 && y(i)==x(j,l) 
               c=c+1;
            end
        end
    end
        if c==0 
            a(k)=y(i);
            k=k+1;
        end
end
end