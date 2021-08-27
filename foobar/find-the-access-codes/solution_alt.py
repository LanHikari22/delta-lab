def solution(l):
    return countLuckyTuples(l)


def countLuckyTuples(l):
    return len(findLuckyTuples(l))

def findLuckyTuples(l):
    # instead of going O(n3) by searching all combinations, reframe `l` by mapping each element to the next
    # possible lucky tuple element. This is an O(n2) operation. Then iterate over each element and build a lucky tuple.

    # uncommented -- it seems uniqueness actually doesn't hold...
    # since we seek unique pairs, any duplicates in sequence over size 3 (ex [1,1,1,1]) will cause a duplicate.
    # perform an O(n1) operation to clear those to be of size 3 max.
    # l = _filterDuplicatesInSeq(l, 3)
    n = len(l)

    # each element will now point to its next possible lucky tuple elements. This is O(n2)
    linked_l = _linkNextLuckyTuple(l)
    assert(len(linked_l) == n)

    # now we iterate over all links of depth 2 and capture all lucky tuples. this is O(n3) worst case still
    res = []
    for i in range(n):
        for j in linked_l[i][1]:
            for k in linked_l[j][1]:
                res.append((l[i], l[j], l[k]))
    
    return res



def _filterDuplicatesInSeq(l, n):
    """
    Removes any duplicate contiguous elements exteeding `n` in O(m) where m = len(l)
    ex: [a,a,a,a,X,b,b,b] -> [a,a,a,X,b,b,b] for n=3
    """
    seq_state, VAL, CNT = (None, 0), 0, 1
    res = []
    m = len(l)
    for i in range(m):
        if seq_state[VAL] != l[i]:
            seq_state = (l[i], 0)
        if seq_state[CNT] < n:
            res.append(l[i])
        seq_state = (seq_state[VAL], seq_state[CNT] + 1)
    return res

def _linkNextLuckyTuple(l):
    """
    iterates all 2-size combinations (i,j) and created a linked list of indices for each possible next lucky tuple value
    this is performed in O(n2) where n = len(l). [1, 1, 1] -> [(1, [1, 2]), (1, [2]), (1, [])]
    """
    res = []
    n = len(l)
    for i in range(n):
        res.append((l[i], []))
        for j in range(i+1, n):
            if l[j] % l[i] == 0:
                res[i][1].append(j)
    
    return res

# --- alternative solutions ---------------------------------------------------------

def _findLuckyTuples_slow1(l):
    tups = []
    length = len(l)

    # iterate all combinations (i, j, k)
    for i in range(length):
        for j in range(i+1, length):
            for k in range(j+1, length):
                if l[j] % l[i] == 0 and l[k] % l[j] == 0:
                    # print("({},{},{}): ({},{},{})".format(i, j, k, l[i], l[j], l[k]))
                    tups.append((l[i], l[j], l[k]))
    
    return tups

from itertools import combinations
def _findLuckyTuples_slow2(l):
    return list((x, y, z)
            #    for x, y, z in combinations(sorted(l), 3)
               for x, y, z in combinations(l, 3)
               if y % x == 0 and z % y == 0)