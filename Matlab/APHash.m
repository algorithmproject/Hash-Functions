%% an algorithm from Arash Partow, http://www.partow.net/programming/hashfunctions/#top
% param:
%   tar, the product to be given a hash code, recommend numeric
%   m, the length of hash vector
function hash = APHash(tar, m)
hash = 1;
tar = int2str(tar);
index = 0;
for i = tar,
    % bitsll : shift left
    % bitsra : shift right
    if ((index & 1) == 0),
        hash = hash + 2^7 * hash + str2double(i) + (1 / 2^3) * hash;
    else
        hash = hash + 2^11 * hash + str2double(i) + (1 / 2^5) * hash;
    end
    index = index + 1;
end
hash = int32(hash);
