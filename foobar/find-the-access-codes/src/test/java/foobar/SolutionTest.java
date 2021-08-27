package foobar;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.text.Format;
import java.util.List;

import org.junit.Test;

/**
 * Unit test for simple App.
 */
public class SolutionTest {
    // --- countLuckyTuples Tests ----------------------------------------
    // - assume all values a,b,c in int[] l to be a < b < c and a,b,c are unique

    @Test
    public void testCountLuckyTuples_test1() {
        _assertCountLuckyTuples(new Integer[] { 1, 2, 3, 4, 5, 6 }, 3);
    }

    @Test
    public void testCountLuckyTuples_test2() {
        _assertCountLuckyTuples(new Integer[] { 1, 1, 1 }, 1);
    }

    @Test
    public void testCountLuckyTuples_countsZero() {
        _assertCountLuckyTuples(new Integer[] { 1, 2 }, 0);
        _assertCountLuckyTuples(new Integer[] { 1 }, 0);
        _assertCountLuckyTuples(new Integer[] {}, 0);
        _assertCountLuckyTuples(new Integer[] { 2, 3, 7, 11 }, 0);
    }

    @Test
    public void testCountLuckyTuples_countsZeroOnNull() {
        _assertCountLuckyTuples(null, 0);
    }

    @Test
    public void testCountLuckyTuples_counts1() {
        _assertCountLuckyTuples(new Integer[] { 1, 2, 4 }, 1);
        _assertCountLuckyTuples(new Integer[] { 1, 3, 6 }, 1);
    }

    @Test
    public void testCountLuckyTuples_counts2() {
        _assertCountLuckyTuples(new Integer[] { 1, 2, 3, 6 }, 2);
        _assertCountLuckyTuples(new Integer[] { 1, 2, 3, 6 }, 2);
    }

    @Test
    public void testCountLuckyTuples_finds3() {
    }

    @Test
    public void testCountLuckyTuples_allowsSelfTuples() {
        _assertCountLuckyTuples(new Integer[] { 1, 1, 1 }, 1);
        _assertCountLuckyTuples(new Integer[] { 1, 1, 1, 1 }, 4);
    }

    // --- factorial and comb Tests --------------------------------------
    @Test
    public void testFactorial_passesTypical() {
        int inout_tup[][] = new int[][] { { 0, 1 }, { 1, 1 }, { 2, 2 }, { 3, 6 }, { 4, 24 }, { 10, 3628800 } };
        final int IN = 0;
        final int OUT = 1;
        for (int i = 0; i < inout_tup.length; i++) {
            int[] tup = inout_tup[i];

            if (Solution.fact(tup[IN]) != tup[OUT]) {
                fail("fact(" + tup[IN] + "): " + Solution.fact(tup[IN]) + " != " + tup[OUT]);
            }
        }
    }

    @Test
    public void testFactorial_disallowsNegative() {
        assertTrue(Solution.fact(-5) == -1);
    }

    @Test
    public void testFactorial_disallowsOverflow() {
        assertTrue(Solution.fact(12) == 479001600);
        assertTrue(Solution.fact(13) == -1);
        assertTrue(Solution.fact(555) == -1);
    }

    @Test
    public void testComb_passesTypical() {
        int test_tup[][] = new int[][] { { 0, 0, 1 },  {5, 3, 10}, {7, 3, 35}, {12, 6, 924}};
        final int N = 0;
        final int R = 1;
        final int OUT = 2;

        for (int i=0; i<test_tup.length; i++) {
            int[] tup = test_tup[i];

            if (Solution.comb(tup[N], tup[R]) != tup[OUT]) {
                fail("comb(" + tup[N] + ", " + tup[R] + "): " + Solution.comb(tup[N], tup[R]) + " != " + tup[OUT]);
            }
        }
    }

    @Test
    public void testComb_disallowsNegative() {
        assertTrue(Solution.comb(-1, 1) == -1);
        assertTrue(Solution.comb(1, -1) == -1);
    }

    /*
    // --- RunLengthEncoding Tests ---------------------------------------
    @Test
    public void testRunLengthEncoding_encodesNoRept() {
        _assertRunLengthEncoding(new Integer[] { 0, 1, 2 },
                new RunLengthEncoding<?>[] { new RunLengthEncoding<Integer>(0, 1), new RunLengthEncoding<Integer>(1, 1),
                        new RunLengthEncoding<Integer>(2, 1) });
    }

    @Test
    public void testRunLengthEncoding_encodesEmpty() {
        _assertRunLengthEncoding(new Integer[] {}, new RunLengthEncoding<?>[] {});
    }

    @Test
    public void testRunLengthEncoding_encodesReptTypical() {
        _assertRunLengthEncoding(new Integer[] { 0, 0 },
                new RunLengthEncoding<?>[] { new RunLengthEncoding<Integer>(0, 2), });
        _assertRunLengthEncoding(new Integer[] { 5, 5, 5, 1 }, new RunLengthEncoding<?>[] {
                new RunLengthEncoding<Integer>(5, 3), new RunLengthEncoding<Integer>(1, 1), });
    }

    @Test
    public void testRunLengthEncoding_encodesReptOutOfOrder() {
        _assertRunLengthEncoding(new Integer[] { 0, 5, 5, 1, 5, 9, 9, 9 },
                new RunLengthEncoding<?>[] { new RunLengthEncoding<Integer>(0, 1), new RunLengthEncoding<Integer>(5, 3),
                        new RunLengthEncoding<Integer>(1, 1), new RunLengthEncoding<Integer>(9, 3), });
    }

    @Test
    public void testRunLengthEncoding_preservesIndexOrderr() {
        _assertRunLengthEncoding(new Integer[] { 0, 0, 1, 0, 0, 0 },
                new RunLengthEncoding<?>[] { new RunLengthEncoding<Integer>(0, 2), new RunLengthEncoding<Integer>(1, 1),
                        new RunLengthEncoding<Integer>(0, 3), });
    }

    // -------------------------------------------------------------------
    */

    public void _assertCountLuckyTuples(Integer[] l, int c) {
        int act = Solution.countLuckyTuples(l);
        assertTrue(String.format("expected %d, got %d", c, act), act == c);
    }


    public void _assertRunLengthEncoding(Integer[] in, RunLengthEncoding<?>[] exp) {
        // RunLengthEncoding<?>[] act =
        // (RunLengthEncoding<?>[])RunLengthEncoding.encode(in); // compiler error
        List<RunLengthEncoding<Integer>> act = RunLengthEncoding.encode(in);

        int len = Math.min(exp.length, act.size());

        for (int i=0; i<len; i++) {
            assertTrue(String.format("expected %s, got %s", exp[i], act.get(i)), exp[i].equals(act.get(i)));
        }

        assertTrue(exp.length == act.size());
    }

}
