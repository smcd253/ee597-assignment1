clear;

% experiment variables
N = 10^6; % number of bits
heta = 2; % path loss exponent

% Transmitter
bits = rand(1,N)>0.5; % random bits to transmit
s = 2*bits-1; % BPSK modulation 0 -> -1; 1 -> 1
% amplitude (power) in mW
% we will increase this over the given range 
% to see the effects on bit error rate
a_min = 10^(-3);
a_max = 10^1;
A = [a_min:0.1:a_max];
Eb = 10*log(A);

% Noise
N0 = 1;
norm_factor = 1/sqrt(2);
% gaussian noise vector (same size as number of bits transmitted) in watts
n = norm_factor*(normrnd(0,N0,[1,N]) + 1i*normrnd(0,N0,[1,N])); % li = j (matlab prompted this)
SNR = Eb./N0; % range of SNR values to iterate over

for i = 1:length(SNR)
   % Noise addition
   r = s + 10^(-SNR(i)/(heta*10))*n; % AWG in mW

   % receiver - hard decision decoding
   bits_received = real(r)>0;

   % count the errors
   nErr(i) = size(find([bits- bits_received]),2);

end

simBer = nErr/N; % simulated BER
EbN0 = 10.^(SNR/10);
theoryBer = qfunc(sqrt(2*EbN0)); % theoretical BER

% plot
close all
figure
semilogy(SNR,theoryBer,'b.-');
hold on
semilogy(SNR,simBer,'mx-');
% hold on
axis([-3 10 10^-5 0.5])
grid on
legend('theoretical', 'simulation');
xlabel('SNR "Eb/No" in dB');
ylabel('Bit Error Rate');
title('Bit Error Probability Curve for BPSK Modulation');
