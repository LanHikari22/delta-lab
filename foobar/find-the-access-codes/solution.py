def solution(l):
    return countLuckyTuples(l)

def countLuckyTuples(l):
    # instead of going O(n3) by searching all combinations, reframe `l` by mapping each element to the next
    # possible lucky tuple element. This is an O(n2) operation. Then iterate over each element and build a lucky tuple.
    n = len(l)

    # each element will now point to its next possible lucky tuple elements. This is O(n2)
    linked_l = _linkNextLuckyTuple(l)
    assert(len(linked_l) == n)

    # now just count all links. should be O(n2)
    res = 0
    for i in range(n):
        for j in linked_l[i][1]:
            res += len(linked_l[j][1])

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