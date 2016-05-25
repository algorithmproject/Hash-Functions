%% simple hash function from Robert Sedgwicks Algorithm
% param:
%   tar, the product to be given a hash code, recommend numeric
%   m, the length of hash vector
function hash = RSHash(tar, m)
b = 3;
a = 2;
hash = 1;
tar = int2str(tar);
for i = tar,
    hash = hash * a + str2double(i);
    a = a * b;
end
hash = int32(hash);
