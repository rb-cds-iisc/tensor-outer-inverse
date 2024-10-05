function [X] = T_MPI(A)
Ni=size(size(A),2);
for i=1:Ni
    r(i)=size(A,i);
end
r(1)=1;
r(2)=1;
k=prod(r);

for i = 3:Ni
D= fft(A, [ ], i);
end
for i = 1:k
G(:, :, i) = pinv(D(:, :, i));
end 
for i = Ni:3
X = ifft(G, [ ], i);
end
