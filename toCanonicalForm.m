function [ A ] = toCanonicalForm( inputMatrix )
m = size(inputMatrix, 1); 
n = size(inputMatrix, 2);
A = zeros(2*m, n);

for i = 1:m
    for j = 1:n
        A(i,j) = inputMatrix(i,j);
    end
end

for i = 1:m
    for j = 1:n
        A(i + m,j) = (-1) * inputMatrix(i,j);
    end
end
A = [A;[];[]];

for j = 1:n
    A(2*m+1,j) = 1;
    A(2*m+2,j) = -1;
end

