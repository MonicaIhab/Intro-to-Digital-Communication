function BER = ComputeBER(bit_seq,rec_bit_seq)
%
% Inputs:
%   bit_seq:     The input bit sequence
%   rec_bit_seq: The output bit sequence
% Outputs:
%   BER:         Computed BER
%
% This function takes the input and output bit sequences and computes the
% BER

%%% WRITE YOUR CODE HERE
BERVector=rec_bit_seq-bit_seq;
BERVectorABS=abs(BERVector);
NumWrongBits=sum(BERVectorABS);
BER=NumWrongBits/length(bit_seq)
%%%
