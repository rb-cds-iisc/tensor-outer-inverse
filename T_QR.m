function [Q1, R1, P1] = T_QR(A)
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
[Q(:, :, i), R(:, :, i), P(:, :, i)]= qr(A(:, :, i));
end 
for i = Ni:3
Q1 = ifft(Q, [ ], i);
R1 = ifft(R, [ ], i);
P1 = ifft(P, [ ], i);
end
