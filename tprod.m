function c=tprod(a,b)
sza=size(a);
szb=size(b);
m=ndims(a);

a=fft(a,[],3);
b=fft(b,[],3);
c=zeros([sza(1),szb(2),sza(3)]);
k=sza(3);
for i=1:k
c(:,:,i)=a(:,:,i)*b(:,:,i);
end
c=ifft(c,[],3);
for i=3:m
    a=ifft(a,[],i);
    b=ifft(b,[],i);
end