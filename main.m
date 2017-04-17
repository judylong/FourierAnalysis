%==================Generating a signal==========================================
ksignal=4;
Bsignal=1;
N=100;
t=0:(N-1);
y1=Bsignal*sin(2*pi*ksignal*t/N);

figure(1);
plot(t,y1);
xlabel('Time');
ylabel('Amplitude');
%================Perform a Fourier Transform====================================
[A,B,ks,ts]=fourier(y1,t);

figure(2);
plot(ks,A);
xlabel('Frequency');
ylabel('Amplitude');
axis([0 50 -0.1 .6]);

figure(3);
plot(ks,B);
xlabel('Frequency');
ylabel('Amplitude');
%===============Perform an Inverse Fourier Transform============================
[y1_recon]=inv_fourier(A,B,t);

figure(4);
plot(t,y1_recon,t,y1);
xlabel('Time');
ylabel('Amplitude');

%--Comparing the difference between the original and reconstructed signals------
diff=abs(y1-y1_recon);
avg_diff=mean(diff);
disp(avg_diff);
