function done =checkZeros(x)
[r c]=size(x);c=0;
for i=1:r
    for j=1:c
        if x(i,j) ==0
            c=c+1;
        end
    end
end
if c==0
    done=true;
else
    done=false;
end
end