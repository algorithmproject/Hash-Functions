%% on of the most efficient hash function created by Professor Daniel J. Bernstein
% param:
%   tar, the product to be given a hash code, recommend numeric
%   m, the length of hash vector
function hash = DJBHash(tar, m)
hash = 5381;
tar = int2str(tar);
for i = tar,
    % bitsll : shift left
    % bitsra : shift right
    hash = bitsll(hash, 5) + hash + str2double(i);
end
hash = int32(hash);
