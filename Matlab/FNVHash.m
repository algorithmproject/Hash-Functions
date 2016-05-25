% param:
%   tar, the product to be given a hash code, recommend numeric
%   m, the length of hash vector
function hash = FNVHash(tar, m)
% size of the hash filter
offset_basis = m;
% size of each hash, if 5 then
fnv_prime = 2^5 + 2^4 + 2^3 + 2^2 + 2 + 1;
hash = offset_basis;
tar = int2str(tar);
for i = tar,
    % bitsll : shift left
    % bitsra : shift right
    hash = bitxor(hash, str2num(i));
    hash = (hash * fnv_prime);
end
hash = int32(hash);
