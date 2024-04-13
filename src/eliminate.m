function f=eliminate(x,a,b)
t=checkZeros(x);
c=1;
for i=1:9
    a=checkBox(x,y,a,b,q);
    for j=1:9
        if a==checkBox(x,y,a,j,q);
            c=c+1;
            tempArray=a;
        end
    end
end
for i=1
end
[u uCount]=identifyMissingIndices(x);
W=zeros(9);
for i=1:u
    for j=1:9
        [R Rindex]=identifyMissingNumbers_R(x,i);
        [C Cindex]=identifyMissingNumbers_C(x,j);
        V=CompareAndEliminate(R,C);
        A=checkBox(x,v,i,j,I);
        for k=1:length(A)
            W(i,k)=A(k);
        end
    end
end
    