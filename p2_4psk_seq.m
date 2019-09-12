clear;

% experiment variables
N = 100000; % number of symbols
heta = 2; % path loss exponent

% Transmitter

% encode symbols (sequential
symbols = randi([0 3],[1,N]); % random bits to transmit
bits = de2bi(symbols);
bits = bits.'; % transpose to match theory

% 4-PSK modulation 00 -> -1; 01 -> j1; 10 -> -j1; 11 -> 1
s = 2*bits(1,:)-1 + 1i*(2*bits(2,:)-1);

% s = s.'
% amplitude (power) in mW
% we will increase this over the given range 
% to see the effects on bit error rate
a_min = 10^(-3);
a_max = 10^1;
A = [a_min:0.1:a_max];
Eb = 10*log(A);

% Noise
N0 = 1;
var = N0/sqrt(2);
% gaussian noise vector (same size as number of bits transmitted) in watts
n = normrnd(0,var,[1,N]) + 1i*normrnd(0,var,[1,N]); % 1i = j (matlab prompted this)
SNR = Eb./N0; % range of SNR values to iterate over

num_trials = length(SNR);
nErr = zeros(1,num_trials);
bitsHat = zeros(2,N);

for i = 1:num_trials
   % Noise addition
   r = s + 10^(-SNR(i)/(heta*10))*n; % AWG in mW

   % receiver - hard decision decoding
   bitsHat(1,:) = real(r)>0;
   bitsHat(2,:) = imag(r)>0;

   % counting the errors
   nErr(i) = size(find(bits - bitsHat),1);
end

simBer = nErr/N; % simulated ber
theoryBer = 0.5*erfc(sqrt(10.^(SNR/10))); % theoretical ber

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
title('Bit error probability curve for BPSK modulation');