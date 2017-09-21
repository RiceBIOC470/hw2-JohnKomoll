function prob_ORF = probabilityORF( N, N_ORF )
% returns the probability of finding an ORF of length N_ORF in a random
% sequence of N length

% Determine number of iterations desired
iters = 1000;

% Initialize vector to hold all longest ORFs
all_longest = zeros(1,iters);

% Iterate through iters cases
for iter = 1:iters
    
    % Generate a random sequence
    randomSeq = randdnaseq(N);
    
    % Find longest ORF of the sequence
    [longest, ~, ~] = findORF(randomSeq);

    % Save longest ORF lengths
    all_longest(iter) = longest;
    
end

% Determine the probability of having over N_ORF b.p. in the max ORF
prob_ORF = length(find(all_longest > N_ORF)) / (iters / 100);

end