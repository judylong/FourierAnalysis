%inverse fourier transform
function [y_recon]= inv_fourier(A,B,t)

N=length(A)+length(B)-2;
k=0:length(A)-1;

for i=1:length(t)
    list_y_recon=A.*cos(2*pi.*k*t(i)/N)+B.*sin(2*pi.*k*t(i)/N);
    y_recon(i)=sum(list_y_recon);
end

end
