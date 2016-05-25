% param:
%   tar, the product to be given a hash code, recommend numeric
%   m, the length of hash vector
function hash = BPHash(tar, m)
hash = 1;
tar = int2str(tar);
for i = tar,
    % bitxor: or by each bit value
    % bitsll : shift left
    % bitsra : shift right
    hash = bitxor(bitsll(hash, 7), str2double(i));
end
hash = int32(hash);
