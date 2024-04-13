function test(x)
k=1;
for i=1:9
    for j=1:9
[R Rindex]=identifyMissingNumbers_R(x,i);
[C Cindex]=identifyMissingNumbers_C(x,j);
v=CompareAndEliminate(R,C);
f=identifyMissingIndices(x);
[n m]=size(f);
for A=1:n
    if i==f(A,1) && j==f(A,2)
    end
end
z=checkBox(x,v,i,j,f);
if length(z)==1 && x(i,j)==0
    a(k,1)=i;a(k,2)=j;
    k=k+1;
    printArray(a);
    x(i,j)=z(1);
end
    end
end
printArray(R);
printArray(C);
printArray(v);
printArray(z);
print2DArray(x);
end
