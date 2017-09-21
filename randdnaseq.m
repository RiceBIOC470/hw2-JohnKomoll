function randomSeq = randdnaseq(N)
% returns a random dna sequence of length N
possible_bases = 'ATGC';
rand_nums = randi(4,1,N);   % Get random numbers corresponding to bases
randomSeq = possible_bases(rand_nums);  % Assign bases to the numbers
end