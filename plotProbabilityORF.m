function plotProbabilityORF ( N_ORF )

% Define sequence lengths
seq_lens = 0:50000:200000;
prob_ORFs = zeros(1, length(seq_lens));  % Initialize vector to hold probabilities

counter = 0;
% Iterate through number of base pairs N
for N = seq_lens
    
    counter = counter + 1;
    
    % Find probability of ORF sequence length N_ORF in sequence of length N
    prob_ORF = probabilityORF( N, N_ORF );
    
    % Save probabilities
    prob_ORFs(counter) = prob_ORF;
    
end

% Plot results
plot(seq_lens, prob_ORFs)
ylabel(['Probability of N_ORF b.p. ORF (% Chance)'])
xlabel('Length of Sequence N')
title(['Likelihood of Obtaining N-ORF+ b.p. ORF by Sequence Length'])


end