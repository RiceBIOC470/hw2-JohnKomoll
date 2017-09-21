function proteinseq = dna2protein(dnaseq,frame)
% Input a dna sequence and a reading frame and returns the corresponding
% protein sequence. 

% Return an error message if an incorrect frame is used
if ~ismember(frame, [1 2 3])
    print('Frame is not valid! Must be 1, 2, or 3.')
end

% Initialize protein sequence
proteinseq = '';

% Define all combos of base pairs that code for each amino acid
gly_seq = {'GGG', 'GGT', 'GGA', 'GGC'};
glu_seq = {'GAG', 'GAA'};
asp_seq = {'GAT', 'GAC'};
val_seq = {'GTG', 'GTT', 'GTA', 'GTC'};
ala_seq = {'GCG', 'GCT', 'GCA', 'GCC'};
lys_seq = {'AAG', 'AAA'};
asn_seq = {'AAT', 'AAC'};
met_seq = {'ATG'};
ile_seq = {'ATT', 'ATC', 'ATA'};
thr_seq = {'ACC', 'ACG', 'ACT', 'ACA'};
trp_seq = {'TGG'};
end_seq = {'TGA', 'TAG', 'TAA'};
cys_seq = {'TGT', 'TGC'};
tyr_seq = {'TAT', 'TAC'};
phe_seq = {'TTT', 'TTC'};
ser_seq = {'TCC', 'TCA', 'TCG', 'TCT', 'AGT', 'AGC'};
arg_seq = {'CGG', 'CGT', 'CGA', 'CGC', 'AGG', 'AGA'};
gln_seq = {'CAG', 'CAA'};
his_seq = {'CAT', 'CAC'};
leu_seq = {'CTG', 'CTC', 'CTA', 'CTT', 'TTG', 'TTA'};
pro_seq = {'CCC', 'CCG', 'CCT', 'CCA'};

% Iterate through each codon, starting in correct frame
for index = frame:3:length(dnaseq)
    
    % Define the codon based on the iterated codon index
    codon = dnaseq(index:index+2);
    
    % Add the three letter code for the iterated amino acid to the protein
    % sequence
    if ismember(codon, gly_seq)
        proteinseq = [proteinseq 'Gly'];
    elseif ismember(codon, glu_seq)
        proteinseq = [proteinseq 'Glu'];
    elseif ismember(codon, asp_seq)
        proteinseq = [proteinseq 'Asp'];
    elseif ismember(codon, val_seq)
        proteinseq = [proteinseq 'Val'];
    elseif ismember(codon, ala_seq)
        proteinseq = [proteinseq 'Ala'];
    elseif ismember(codon, arg_seq)
        proteinseq = [proteinseq 'Arg'];
    elseif ismember(codon, ser_seq)
        proteinseq = [proteinseq 'Ser'];
    elseif ismember(codon, lys_seq)
        proteinseq = [proteinseq 'Lys'];
    elseif ismember(codon, asn_seq)
        proteinseq = [proteinseq 'Asn'];
    elseif ismember(codon, met_seq)
        proteinseq = [proteinseq 'Met'];
    elseif ismember(codon, ile_seq)
        proteinseq = [proteinseq 'Ile'];
    elseif ismember(codon, thr_seq)
        proteinseq = [proteinseq 'Thr'];
    elseif ismember(codon, trp_seq)
        proteinseq = [proteinseq 'Trp'];
    elseif ismember(codon, end_seq)
        proteinseq = [proteinseq 'End'];
    elseif ismember(codon, cys_seq)
        proteinseq = [proteinseq 'Cys'];
    elseif ismember(codon, tyr_seq)
        proteinseq = [proteinseq 'Tyr'];
    elseif ismember(codon, leu_seq)
        proteinseq = [proteinseq 'Leu'];
    elseif ismember(codon, phe_seq)
        proteinseq = [proteinseq 'Phe'];
    elseif ismember(codon, gln_seq)
        proteinseq = [proteinseq 'Gln'];
    elseif ismember(codon, his_seq)
        proteinseq = [proteinseq 'His'];
    elseif ismember(codon, pro_seq)
        proteinseq = [proteinseq 'Pro'];
    end
    
end

end


