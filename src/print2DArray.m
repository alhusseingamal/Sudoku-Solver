function print2DArray(x)
[r c]=size(x);
fprintf('[\n')
for i=1:r
    for j=1:c
        fprintf('%d ',x(i,j))
    end
    fprintf('\n')
end
fprintf(']\n')
end
        