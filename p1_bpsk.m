
% number of trials
t = 1000

% signal magnitude
A = 0:1:t

% declare Eb (symbol mag squared)
% Eb = 0:1:t;

% No values
No = 1;
VAR = No/2;

% noise array
n = normrnd(0, VAR, [1,t])

% SNR
SNR = Eb/No;

% define decision bounary as 0
dec_bound = 0

% iterate along SNR and calculate Pb based on 
for j = 1:t
    % build/send signal
    s = randi(-1*A[j]:A[j]);
    r = s + n[j];
    
    % receive signal and evaluate if 
end   
% symbol noise = normrnd(0,VAR), where VAR = No/2
% "send" bits with a value of 0 or 1
    % 0 = -A
    % 1 = A
% if -A + N[i]r = normrnd(mu,sigma)