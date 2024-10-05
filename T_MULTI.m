function [AB] = T_MULTI(A, B)
Ni=size(size(A),2);
for i=1:Ni
    r(i)=size(A,i);
end
r(1)=1;
r(2)=1;
k=prod(r);

for i = 3:Ni
a = fft(A, [ ], i);
b = fft(B, [ ], i);
end
for i = 1:k
ab(:,:,i)=a(:,:,i)*b(:,:,i);
end 
for i = Ni:3
AB = ifft(ab, [ ], i);
end

