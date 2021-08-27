import unittest
import math
import solution as uut

class SolutionTest(unittest.TestCase):
    def test_countLuckyTuples_test1(self):
        self.assertEqual(uut.countLuckyTuples([1, 2, 3, 4, 5, 6]), 3)
    
    def test_countLuckyTuples_test2(self):
        self.assertEqual(uut.countLuckyTuples([1, 1, 1]), 1)

    def test_countLuckyTuples_countsCombinations(self):
        self.assert_countLuckyTuples_countsCombinations([1, 1, 1, 1])
        self.assert_countLuckyTuples_countsCombinations([1, 1, 1, 1, 1, 1, 1, 1, 1])
        self.assert_countLuckyTuples_countsCombinations([7, 7, 7, 7])
        self.assert_countLuckyTuples_countsCombinations([1, 1, 2, 2, 4, 4])
        self.assert_countLuckyTuples_countsCombinations([1, 1, 2, 2, 4, 4, 8])
        self.assert_countLuckyTuples_countsCombinations([1, 1, 2, 4, 4, 8])
    
    def test_countLuckyTuples_countsTypical(self):
        # self.assertEqual(uut.countLuckyTuples([1, 1, 1]), 1)
        pass

    def assert_countLuckyTuples_countsCombinations(self, l):
        self.assertEqual(uut.countLuckyTuples(l), math.comb(len(l), 3))


if __name__ == '__main__':
    unittest.main()
