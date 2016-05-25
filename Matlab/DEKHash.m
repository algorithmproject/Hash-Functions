%% introduced in the book named The Art Of Computer Programming Volume 3
% param:
%   tar, the product to be given a hash code, recommend numeric
%   m, the length of hash vector
function hash = DEKHash(tar, m)
tar = int2str(tar);
hash = length(tar);
for i = tar,
    % bitxor: or by each bit value
    % bitsll : shift left
    % bitsra : shift right
    hash = bitxor(bitxor(bitsll(hash, 5), hash), str2double(i));
end
hash = int32(hash);
