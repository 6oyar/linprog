function [ A ] = toCanonicalForm( inputMatrix )
m = size(inputMatrix, 1); 
n = size(inputMatrix, 2);
A = zeros(2*m, n + 2*m);

for i = 1:m
    for j = 1:n
        A(i,j) = inputMatrix(i,j);
    end
end

for i = 1:m
    for j = 1:n
        A(i + m,j) = inputMatrix(i,j);
    end
end

for i = 1:m
    A(i,i + n) = 1;
end

for i = 1:m
    A(i + m,i + +n + m) = -1;
end

end

