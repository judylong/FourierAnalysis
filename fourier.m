%fourier transform
function [A,B,ks,ts] = fourier(y,t)
N=length(y);
if (mod(N,2)==0)
    N=N;
else
    N=N-1;
    t=t(1:N);
end

for k=0:N/2
    listA=2/N*y(1:N).*cos(2*pi*k*t/N);
    listB=2/N*y(1:N).*sin(2*pi*k*t/N);
    A(k+1)=sum(listA);
    B(k+1)=sum(listB);
end
assoc_freq=0:N/2;
A(1)=1/N*sum(y(1:N));
A(N/2+1)=1/N*sum(y(1:N).*cos(pi*t));

ks = 0:N/2;
ts=t(1:length(A+1));
end
