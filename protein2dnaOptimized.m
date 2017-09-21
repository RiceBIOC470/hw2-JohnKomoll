function dnaseq_opt = protein2dnaOptimized(protseq)
% Input a protein sequence and  returns the corresponding dna sequence.

% Initialize dna sequence
dnaseq_opt = '';

% Define optimized base pairs that code for each amino acid
gly_seq = 'GGC';
glu_seq = 'GAG';
asp_seq = 'GAC';
val_seq = 'GTG';
ala_seq = 'GCC';
lys_seq = 'AAG';
asn_seq = 'AAC';
met_seq = 'ATG';
ile_seq = 'ATC';
thr_seq = 'ACC';
trp_seq = 'TGG';
end_seq = 'TGA';
cys_seq = 'TGC';
tyr_seq = 'TAC';
phe_seq = 'TTC';
ser_seq = 'AGC';
arg_seq = 'AGA';
gln_seq = 'CAG';
his_seq = 'CAC';
leu_seq = 'CTG';
pro_seq = 'CCC';

% Iterate through each amino acid
for index = 1:3:length(protseq)
    
    % Define the codon based on the iterated amino acid index
    amino_acid = protseq(index:index+2);
    
    % Add the base pairs for the iterated amino acid to the dna sequence
    if amino_acid == 'Gly'
        dnaseq_opt = [dnaseq_opt gly_seq];
    elseif amino_acid == 'Glu'
        dnaseq_opt = [dnaseq_opt glu_seq];
    elseif amino_acid == 'Asp'
        dnaseq_opt = [dnaseq_opt asp_seq];
    elseif amino_acid == 'Val'
        dnaseq_opt = [dnaseq_opt val_seq];
    elseif amino_acid == 'Ala'
        dnaseq_opt = [dnaseq_opt ala_seq];
    elseif amino_acid == 'Arg'
        dnaseq_opt = [dnaseq_opt arg_seq];
    elseif amino_acid == 'Ser'
        dnaseq_opt = [dnaseq_opt ser_seq];
    elseif amino_acid == 'Lys'
        dnaseq_opt = [dnaseq_opt lys_seq];
    elseif amino_acid == 'Asn'
        dnaseq_opt = [dnaseq_opt asn_seq];
    elseif amino_acid == 'Met'
        dnaseq_opt = [dnaseq_opt met_seq];
    elseif amino_acid == 'Ile'
        dnaseq_opt = [dnaseq_opt ile_seq];
    elseif amino_acid == 'Thr'
        dnaseq_opt = [dnaseq_opt thr_seq];
    elseif amino_acid == 'Trp'
        dnaseq_opt = [dnaseq_opt trp_seq];
    elseif amino_acid == 'End'
        dnaseq_opt = [dnaseq_opt end_seq];
    elseif amino_acid == 'Cys'
        dnaseq_opt = [dnaseq_opt cys_seq];
    elseif amino_acid == 'Tyr'
        dnaseq_opt = [dnaseq_opt tyr_seq];
    elseif amino_acid == 'Leu'
        dnaseq_opt = [dnaseq_opt leu_seq];
    elseif amino_acid == 'Phe'
        dnaseq_opt = [dnaseq_opt phe_seq];
    elseif amino_acid == 'Gln'
        dnaseq_opt = [dnaseq_opt gln_seq];
    elseif amino_acid == 'His'
        dnaseq_opt = [dnaseq_opt his_seq];
    elseif amino_acid == 'Pro'
        dnaseq_opt = [dnaseq_opt pro_seq];
    end
    
end

end


