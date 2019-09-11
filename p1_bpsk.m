N = 10^6 % number of bits or symbols

% Transmitter
ip = rand(1,N)>0.5; % generating 0,1 with equal probability
s = 2*ip-1; % BPSK modulation 0 -> -1; 1 -> 1 
n = 1/sqrt(2)*[randn(1,N) + j*randn(1,N)]; % white gaussian noise, 0dB variance 
SNR = [-3:10]; % multiple Eb/N0 values

for i = 1:length(SNR)
   % Noise addition
   y = s + 10^(-SNR(i)/20)*n; % additive white gaussian noise

   % receiver - hard decision decoding
   ipHat = real(y)>0;

   % counting the errors
   nErr(i) = size(find([ip- ipHat]),2);

end

simBer = nErr/N; % simulated ber
theoryBer = 0.5*erfc(sqrt(10.^(SNR/10))); % theoretical ber

% plot
close all
figure
semilogy(SNR,theoryBer,'b.-');
hold on
semilogy(SNR,simBer,'mx-');
hold on
% semilogy(SNR,y/N,'s');
axis([-3 10 10^-5 0.5])
grid on
legend('theory', 'simulation');
xlabel('Eb/No, dB');
ylabel('Bit Error Rate');
title('Bit error probability curve for BPSK modulation');
