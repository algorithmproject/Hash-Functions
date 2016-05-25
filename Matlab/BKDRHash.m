%% a hash function from the book named "The C Programming Language"
% param:
%   tar, the product to be given a hash code, recommend numeric
%   m, the length of hash vector
function hash = BKDRHash(tar, m)
hash = 1;
tar = int2str(tar);
for i = tar,
    % bitsll : shift left
    % bitsra : shift right
    hash = bitsll(hash, 7) + bitsll(hash, 1) + hash + str2double(i);
end
hash = int32(hash);
