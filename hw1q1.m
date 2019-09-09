%HW1

t=1000; %t # of trials
n0=1:-0.01:0; %create array of sample noise values (this determines x-axis of Eb/No if Eb is constant)
x=floor(2*rand(1,t)); %generate array of t simulated 'transmit' signals (zeros or ones)
x2=2*x-1; %change to -1 and 1 for constellation symmetry
for j=1:length(n0)
    n=sqrt(n0(j))*randn(1,t); %generate random noise with mean 0 and variance 1
    %sample randn syntax: 2+sqrt(0.5)*randn(1,trials); for mean 2, 0.5 variance

    s=x+n; %add transmit signal to channel noise for Rx signal s
    %plot(s);

    error=zeros(1,t); %instantiate error array
    for i=1:t
       %sending 0 but receiving '1' 
       if x2(i)=='-1'
           if s(i)>0
               error(i)=1;
           end
       end
       %sending 1 but receiving '0'
       if x2(i)=='1'
           if s(i)<0
               error(i)=1;
           end
       end
    end
    
    ber=sum(error)/t; %ber=count of errors over #trials
    
    %plotting
    figure(1);
    hold on;
    semilogy(ber, 1/n0(j), 'b.-'); %plot BER vs Eb/No
    grid on;
    xlabel('Eb/No dB');
    ylabel('BER');    
end