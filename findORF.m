function [ORFlength, start_pos, stop_pos] = findORF(dnaseq)
%Function to find the length of the longest open reading frame of a
%sequences called dnaseq

%fill in here. 

% Make all base pairs upper case
dnaseq = upper(dnaseq);

% Find start and stop codons
starts = strfind(dnaseq, 'ATG');
ends = sort([strfind(dnaseq, 'TAA') strfind(dnaseq, 'TGA') strfind(dnaseq, 'TAG')]);
ORFlength = 0; % Initialize variable to hold longest ORF length

% Iterate through start codons
for codon = starts
    
    % Find lengths from start to all stops
    lengths = ends - codon;
    
    % Pull the shortest positive length - this is the ORF
    orf = lengths(find(lengths > 0, 1));
    
    % Save this length if it is longer than previous ones
    if orf > ORFlength & mod(orf, 3) == 0
        % Mod 3, because ORF must act on codons 3n pase pairs away
        ORFlength = orf;
        start_pos = codon;
        stop_pos = orf - start_pos;
    end
    
end

% Case where no ORF is found
if ORFlength == 0
    
    % Set start and stop as 0, so anyone evaluating stop - start gets 0
    start_pos = 0;
    stop_pos = 0;
    
end

end

