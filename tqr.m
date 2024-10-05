function [Q,R]=tqr(a)
[n1,n2,n3]=size(a);
A=fft(a,[],3);
for i=1:n3
    [q,r]=qr(A(:,:,i));
    Q1(:,:,i)=q;
    R1(:,:,i)=r;
end
Q=ifft(Q1,[],3);
R=ifft(R1,[],3);
end
