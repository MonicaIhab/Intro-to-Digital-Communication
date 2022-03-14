function rec_bit_seq = DecodeBitsFromSamples(rec_sample_seq,case_type,p,fs)
%
% Inputs:
%   rec_sample_seq: The input sample sequence to the channel
%   case_type:      The sampling frequency used to generate the sample sequence
%   p:             The bit flipping probability
% Outputs:
%   rec_sample_seq: The sequence of sample sequence after passing through the channel
%
% This function takes the sample sequence after passing through the
% channel, and decodes from it the sequence of bits based on the considered
% case and the sampling frequence


switch case_type
    
    case 'part_1'
        %%% WRITE YOUR CODE FOR PART 1 HERE
        if p<=0.5
            rec_bit_seq = rec_sample_seq;
        end
        %%%
        %%% WRITE YOUR CODE FOR PART 1 A HERE
        if p>0.5
            rec_bit_seq = ~rec_sample_seq;
        end
        %%%
    case 'part_2'
        %%% WRITE YOUR CODE FOR PART 2 HERE
        if p<=0.5
            for index = 1:length(rec_sample_seq)/fs
                rec_bit_seq(index) = mode(rec_sample_seq((index-1)*fs+1:(index-1)*fs+1+(fs-1)));
            end
        end
        
        if p>0.5
            rec_sample_seq = ~rec_sample_seq;
            for index = 1:length(rec_sample_seq)/fs
                rec_bit_seq(index) = mode(rec_sample_seq((index-1)*fs+1:(index-1)*fs+1+(fs-1)));
            end
        end
        %%%
    case 'part_3'
        %%% WRITE YOUR CODE FOR PART 3 HERE
        if p<=0.5
            for index = 1:length(rec_sample_seq)/fs
                rec_bit_seq(index) = mode(rec_sample_seq((index-1)*fs+1:(index-1)*fs+1+(fs-1)));
            end
        end
        
        if p>0.5
            rec_sample_seq = ~rec_sample_seq;
            for index = 1:length(rec_sample_seq)/fs
                rec_bit_seq(index) = mode(rec_sample_seq((index-1)*fs+1:(index-1)*fs+1+(fs-1)));
            end
        end        
        %%%
end