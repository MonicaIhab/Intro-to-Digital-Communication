function sample_seq = GenerateSamples(bit_seq,fs)
%
% Inputs:
%   bit_seq:    Input bit sequence
%   fs:         Number of samples per bit
% Outputs:
%   sample_seq: The resultant sequence of samples
%
% This function takes a sequence of bits and generates a sequence of
% samples as per the input number of samples per bit

sample_seq = zeros(1,(length(bit_seq)*fs));

%%% WRITE YOUR CODE FOR PART 2 HERE

for index = 1:length(bit_seq)
    for i = 1:fs
        sample_seq((index-1)*fs+i) = bit_seq(index);
    end  
end
%%%