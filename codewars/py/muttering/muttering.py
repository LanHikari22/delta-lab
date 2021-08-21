def accum(s):
    res = ''

    for i in range(len(s)):
        c = s[i]
        res += str.upper(c) + c * (i) + '-'
    
    if res.endswith('-'):
        res = res[:-1]

    return res


print(accum('abcd'))
