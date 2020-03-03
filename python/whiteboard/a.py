
def prob(k, m, n):
    import sys
    pAns = 0.78333
    # total sample
    tot = k+m+n

    # probability that first is...
    pK1 = k / tot
    pM1 = m / tot
    pN1 = n / tot

    # probablity that both are of the same kind
    pKK = pK1 * (k-1) / (tot-1)
    pMM = pM1 * (m-1) / (tot-1)
    pNN = pN1 * (n-1) / (tot-1)

    # probablity that we get a mix
    pKN = pK1 * n / (tot-1)
    pNK = pN1 * k / (tot-1)
    pKM = pK1 * m / (tot-1)
    pMK = pM1 * k / (tot-1)
    pNM = pN1 * m / (tot-1)
    pMN = pM1 * n / (tot-1)

    assert 1.0 - sys.float_info.epsilon <= pNN + pNM + pMN + pNK + pKN + pKM + pMK + pKK + pMM <= 1.0

    # probablity that we get a recessive
    pRec = pNN + .5*(pMM + pKN + pNK) + .75*(pNM + pMN) + .25*(pKM + pMK)
    print("pRec: ", pRec)

    # probablity that we get a dominant
    pDom = pKK + .5*(pMM + pKN + pNK) + .26*(pNM + pMN) + .75*(pKM + pMK)
    print("pDom: ", pDom)


    return 0.0


if __name__ == '__main__':
    pAns = 0.78333
    res = prob(2.0, 2.0, 2.0)
    print("expected: ", 0.78333)
    print("actual: ", res)
