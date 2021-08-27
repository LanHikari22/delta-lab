import unittest
import math
import solution as uut
import solution_alt as alt

class SolutionTest(unittest.TestCase):
    def test_countLuckyTuples_test1(self):
        self.assert_countLuckyTuples_equals([1, 2, 3, 4, 5, 6],         3)
    
    def test_countLuckyTuples_test2(self):
        self.assert_countLuckyTuples_equals([1, 1, 1],                  1)

    # def test_countLuckyTuples_countsCombinations(self):
    def test_countLuckyTuples_testUniqueness(self):
        self.assert_countLuckyTuples_matchesSlow([1, 1, 1, 1])
        self.assert_countLuckyTuples_matchesSlow([1, 1, 1, 1, 1, 1, 1, 1, 1])
        self.assert_countLuckyTuples_matchesSlow([7, 7, 7, 7])
        self.assert_countLuckyTuples_matchesSlow([1, 1, 2, 2, 4, 4])
        self.assert_countLuckyTuples_matchesSlow([1, 1, 2, 2, 4, 4, 8])
        self.assert_countLuckyTuples_matchesSlow([1, 1, 2, 4, 4, 8])
    
    def test_countLuckyTuples_considersOrder(self):
        self.assert_countLuckyTuples_equals([6, 3, 1],                  0)
        self.assert_countLuckyTuples_equals([2, 1, 1, 2, 1],            2)
    
    def test_countLuckyTuples_corner(self):
    #     self.assertEqual(uut.countLuckyTuples([1, 2, 4, 8, 16]), 6)
        self.assert_countLuckyTuples_equals([1, 2, 4, 8],               4)
        self.assert_countLuckyTuples_equals([1, 2, 4, 6, 12],           7)

    # --------------------------------------------------------------------------------
    def assert_countLuckyTuples_countsCombinations(self, l):
        exp = math.comb(len(l), 3)
        self._assert_countLuckyTuples_equals(l, exp)

    def assert_countLuckyTuples_matchesSlow(self, l):
        self._assert_countLuckyTuples_equals(l, exp=None)

    def assert_countLuckyTuples_equals(self, l, exp):
        self._assert_countLuckyTuples_equals(l, exp)

    def _assert_countLuckyTuples_equals(self, l, exp=None):
        exp_tup1 = alt._findLuckyTuples_slow1(l)
        exp_tup2 = alt._findLuckyTuples_slow2(l)
        exp_tup = exp_tup1
        if exp == None:
            exp = len(exp_tup)

        warn = ''
        warn += '' if exp_tup1 == exp_tup2 else 'WARN: reference tups unmatching:\n\texp_tup1: {} {}\n\texp_tup2: {} {}\n'\
                .format(len(exp_tup1), exp_tup1, len(exp_tup2), exp_tup2)
        warn += '' if len(exp_tup) == exp else 'WARN: test: specified {}, expected {}\n'\
                .format(exp, len(exp_tup))

        # act_tup = uut.findLuckyTuples(l)
        act_tup = exp_tup # disabled as we only have count for final solution
        act = uut.countLuckyTuples(l)

        if act != exp or act_tup != exp_tup or warn != '':
            fail_msg = '\nl: {}\n{}'.format(l, warn)
            fail_msg += '' if act == exp else "FAIL: expected {}, got {}\n"\
                    .format(exp, act)
            fail_msg += '' if act_tup == exp_tup else "FAIL:\n\texp_tup: {} {}\n\tact_tup: {} {}"\
                    .format(len(exp_tup), exp_tup, act, act_tup)
            fail_msg = ('\t' + fail_msg.replace('\n', '\n\t')).replace('\t', '  ')

            self.fail(fail_msg)


class PrivateSolutionTest(unittest.TestCase):
    def test__filterDuplicatesInSeq_typical(self):
        self.assertEqual(alt._filterDuplicatesInSeq([1,1,1,1,2,3,3,3], 3), [1,1,1,2,3,3,3])
        self.assertEqual(alt._filterDuplicatesInSeq([1,1,1,1,2,3,3,3], 0), [])
        self.assertEqual(alt._filterDuplicatesInSeq([1,1,1,1,2,3,3,3], 1), [1,2,3])
        self.assertEqual(alt._filterDuplicatesInSeq([1,1,1,1,2,3,3,3,3,3,3,3], 2), [1,1,2,3,3])

    def test__linkNextLuckyTuple_typical(self):
        self.assertEqual(uut._linkNextLuckyTuple([1, 1, 1]), [(1, [1, 2]), (1, [2]), (1, [])])

if __name__ == '__main__':
    unittest.main()
