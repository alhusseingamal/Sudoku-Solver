%Alhussein Gamal Hussein Ali, ÇáÍÓíä ÌãÇá ÍÓíä Úáí, 1200399,
%alhussein.ali02@eng-st.cu.edu.eg
function DisplayGrid(x)
        fprintf('+======================================+\n')
for i=1:9
    if i>1 && rem(i,3)==1
        fprintf('|======================================|\n')
    end
    fprintf('| ')
    for j=1:9
        if rem(j,3)==0
            fprintf('%d ',x(i,j))
        else
        fprintf('%d   ',x(i,j))
        end
        if j>1 && rem(j,3)==0
            fprintf(' | ')
        end
    end
    fprintf('\n')
end
if rem(i,3)==0        
            fprintf('+======================================+\n')
end
end
    
        
        