function t=ifZeros(x,rowNo)
[r c]=size(x);
for i=1:9
    if x(rowNo,i)==0
        c=c+1;
    end
end
if c==9
    t=1;
else
    t=0;
end
end