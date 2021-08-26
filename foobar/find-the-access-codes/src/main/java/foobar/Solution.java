package foobar;

import java.util.List;
import java.util.ArrayList;
import java.util.Arrays;

public class Solution {
    private static final int fact_mem[] = new int[256];

    public static int solution(int[] l) {
        Arrays.sort(l);
        Integer _l[] = new Integer[l.length];
        for (int i=0; i<l.length; i++)
            _l[i] = l[i];
        return countLuckyTuples(_l);
        //return 1;
    }
    
    public static int countLuckyTuples(Integer[] l) {
        int res = 0;

        if (l == null || l.length < 3)
            return 0;

        List<RunLengthEncoding<Integer>> rle = RunLengthEncoding.encode(l);

        for (int i = 0; i < rle.size(); i++) {
            // first, count all tuples (li, li, li)
            res += comb(rle.get(i).length, 3);

            for (int j = i + 1; j < rle.size(); j++) {
                for (int k = j + 1; k < rle.size(); k++) {
                    int run[] = new int[] { rle.get(i).run, rle.get(j).run, rle.get(k).run};
                    if (run[1] % run[0] == 0 && run[2] % run[1] == 0) {
                        res += rle.get(i).length * rle.get(j).length * rle.get(k).length;
                    }
                }
            }
        }

        return res;
    }

    public static int fact(int n) {
        if (n < 0 || n > 12)
            return -1; // invalid result

        if (n < 256 && fact_mem[n] != 0)
            return fact_mem[n];

        int res = 1;
        for (int i = n; i > 0; i--) {
            res = res * i;
        }

        if (n < 256)
            fact_mem[n] = res;

        return res;
    }

    public static int comb(int n, int r) {
        if (n < 0 || r < 0)
            return -1;
        return fact(n) / (fact(r) * fact(n - r));
    }
}

class RunLengthEncoding<T> {
    T run;
    int length;

    public RunLengthEncoding(T run, int length) {
        this.run = run;
        this.length = length;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;

        if (o instanceof RunLengthEncoding<?>) {
            RunLengthEncoding<?> typedO = (RunLengthEncoding<?>) o;
            return this.run.equals(typedO.run) && this.length == typedO.length;
        }

        return false;
    }

    @Override
    public String toString() {
        return String.format("(r=%d, l=%d)", run, length);
    }

    public static <T> List<RunLengthEncoding<T>> encode(T[] l) {
        List<RunLengthEncoding<T>> rle = new ArrayList<RunLengthEncoding<T>>();

        for (T elem : l) {
            if (!rle.isEmpty() && rle.get(rle.size() - 1).run.equals(elem))
                rle.get(0).length++;
            else
                rle.add(new RunLengthEncoding<T>(elem, 1));
        }

        return rle;
    }
}