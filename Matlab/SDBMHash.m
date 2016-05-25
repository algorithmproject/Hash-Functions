%% the function that used in open source SDBM proect
% param:
%   tar, the product to be given a hash code, recommend numeric
%   m, the length of hash vector
function hash = SDBMHash(tar, m)
% hash = 0;
hash = 1;
tar = int2str(tar);
for i = tar,
    % bitsll : shift left
    % bitsra : shift right
    hash = bitsll(hash, 6) + bitsll(hash, 16) + str2double(i) - hash;
end
hash = int32(hash);
