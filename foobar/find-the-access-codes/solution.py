def solution(l):
    return countLuckyTuples(l)


def countLuckyTuples(l):
    res = 0
    length = len(l)
    for i in range(length):
        for j in range(i+1, length):
            for k in range(j+1, length):
                if l[j] % l[i] == 0 and l[k] % l[j] == 0:
                    # print("({},{},{}): ({},{},{})".format(i, j, k, l[i], l[j], l[k]))
                    res += 1
    
    return res