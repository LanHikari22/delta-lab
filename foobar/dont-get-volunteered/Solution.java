import java.util.ArrayList;
import java.util.List;

public class Solution {
    // (COL, ROW) tuple definitions
    public static int COL = 0;
    public static int ROW = 1;

    public static int solution(int src, int dest) {
        // Your code here
        return computeLSteps(src, dest);
    }

    /**
     * computes the optimal number of 'L' steps to take to go from `src` to `dest`,
     * which are indices in an 8x8 chessboard (0-63 inclusive)
     */
    public static int computeLSteps(int src, int dest) {
        // 1, If you can go to the destination, do so (1 move win)
        // 2. If you can go to a tile that leads to the destination, do so (2 move win)
        // 3. Check turn 2 -- all possible moves for each move. See if they map to D
        // 4. otherwise, just go to the tile that is closest to destination

        int pos = src;
        int moves = 0;
        int[] destTile = tile(dest);

        if (src == dest)
            return moves;

        List<Integer> destMoves = Solution.simValidLMoves(dest);

        while (true) {
            List<Integer> nextTurn1 = Solution.simValidLMoves(pos);
            if (nextTurn1.contains(dest))
                return moves + 1; // can directly reach D next turn
            
            for (Integer move : nextTurn1) {
                if (destMoves.contains(move))
                    return moves + 2; // can reach a tile that reaches D next turn
            }

            /* not needed anymore? seems to be covered by 2-turn exhaustive search...
            if (withinTwoTurns(pos, dest))
                return moves + 2;

            // each potential tile according to 3 has possible pairs that lead to D
            for (Integer move : nextTurn1) {
                if (withinTwoTurns(move, dest))
                    return moves + 3;
            }
            */

            // look ahead one more turn
            for (Integer move1 : nextTurn1) {
                List<Integer> nextTurn2 = Solution.simValidLMoves(move1);
                if (nextTurn2.contains(dest))
                    return moves + 2;
                for (Integer move2 : nextTurn2) {
                    if (destMoves.contains(move2))
                        return moves + 3;
                }
            }

            // we seem to be pretty far away, just try to move towards D
            int closestMove = -1;
            int shortestDistance = 9999;
            for (Integer move : nextTurn1) {
                int[] moveTile = tile(move);
                int distance = Math.abs(destTile[COL] - moveTile[COL]) + Math.abs(destTile[ROW] - moveTile[ROW]);
                if (distance < shortestDistance) {
                    closestMove = move;
                    shortestDistance = distance;
                }
            }
            assert(shortestDistance != -1);

            pos = closestMove;
            moves += 1;
        }
    }

    /**
     * Pair moves are calculated according to Figure 1. Each spot [//] 
     * has corresponding [--] that would lead to [ D]. This checks of said tiles are valid for `pos`
     * 
     * [--][--][//][--][--]
     * [--][//][--][//][--]
     * [//][--][ D][--][//]
     * [--][//][--][//][--]
     * [--][--][//][--][--]
     * Figure 1
     */
    public static boolean withinTwoTurns(int pos, int dest) {
        int[] posTile = tile(pos);
        int[] destTile = tile(dest);

        if (equal(transform(destTile, tile(-1, 1)), posTile))
            if (transform(destTile, tile(-2, -1)) != null || transform(destTile, tile(1, 2)) != null)
                return true;
        if (equal(transform(destTile, tile(-2, 0)), posTile))
            if (transform(destTile, tile(-1, -2)) != null || transform(destTile, tile(-1, 2)) != null)
                return true;
        if (equal(transform(destTile, tile(-1, -1)), posTile))
            if (transform(destTile, tile(-2, 1)) != null || transform(destTile, tile(1, -2)) != null)
                return true;
        if (equal(transform(destTile, tile(0, -2)), posTile))
            if (transform(destTile, tile(-2, -1)) != null || transform(destTile, tile(2, -1)) != null)
                return true;
        if (equal(transform(destTile, tile(1, -1)), posTile))
            if (transform(destTile, tile(-1, -2)) != null || transform(destTile, tile(2, 1)) != null)
                return true;
        if (equal(transform(destTile, tile(-2, 0)), posTile))
            if (transform(destTile, tile(1, -2)) != null || transform(destTile, tile(1, 2)) != null)
                return true;
        if (equal(transform(destTile, tile(1, 1)), posTile))
            if (transform(destTile, tile(2, -1)) != null || transform(destTile, tile(-1, 2)) != null)
                return true;
        if (equal(transform(destTile, tile(0, 2)), posTile))
            if (transform(destTile, tile(2, 1)) != null || transform(destTile, tile(-2, 1)) != null)
                return true;
        
        return false;
    }

    public static boolean IsValidLMove(int pos, int newPos) {
        if (newPos < 0 || pos < 0 || newPos > 63 || pos > 63)
            return false;

        List<Integer> possibleMoves = simValidLMoves(pos);
        if (possibleMoves == null)
            return false;

        for (int move : possibleMoves) {
            if (newPos == move)
                return true;
        }

        return false;
    }

    public static List<Integer> simValidLMoves(int pos) {
        List<Integer> res = new ArrayList<Integer>();

        if (!inBoard(pos))
            return null;

        // array of column row transformation tuples (c, r)
        int[][] transformations = new int[][] { { 1, 2 }, { 2, 1 }, { -1, 2 }, { -2, 1 }, { 1, -2 }, { 2, -1 },
                { -1, -2 }, { -2, -1 }, };

        for (int[] tup : transformations) {
            int tup_c = tup[0];
            int tup_r = tup[1];
            int pos_c = pos % 8;
            int pos_r = pos / 8;

            if (inBoard(pos_c + tup_c, pos_r + tup_r))
                    res.add(pos + tup_c + 8 * tup_r);
        }

        return res;

        // possible transformations:
        //      1. +1c +2r
        //      2. +2c +1r
        //      3. -1c +2r
        //      4. -2c +1r
        //      5. +1c -2r
        //      6. +2c -1r
        //      7. -1c -2r
        //      8. -2c -1r
        // total states len({++ -+ +- --}) * len({(1, 2), (2, 1)}) = 4 * 2 = 8
        // be aware that you can't overflow rows or columns
    }

    public static boolean inBoard(int tile)
    {
        return tile >= 0 && tile <= 63;
    }

    public static boolean inBoard(int tile_col, int tile_row)
    {
        return tile_col >= 0 && tile_col <= 7 && tile_row >= 0 && tile_row <= 7;
    }

    public static boolean inBoard(int[] tile_coord)
    {
        assert(tile_coord.length == 2);
        return inBoard(tile_coord[COL], tile_coord[ROW]);
    }

    /**
     * @return the transformed tile or null if not possible to transform
     */
    public static int[] transform(int[] tile, int c, int r) {
        assert(tile.length == 2);
        int[] outTile = tile(tile);
        outTile[COL] += c;
        outTile[ROW] += r;

        if (inBoard(outTile))
            return outTile;
        
        return null;
    }

    public static int[] transform(int[] tile, int[] transform) {
        assert(transform.length == 2);
        return transform(tile, transform[COL], transform[ROW]);
    }

    public static boolean equal(int[] tile1, int[] tile2) {
        if (tile1 == null || tile2 == null)
            return false;
        
        return tile1.equals(tile2);
    }

    /**
     * returns (column, row) pair
     */
    public static int[] tile(int tile) {
        return new int[] {tile % 8, tile / 8};
    }

    public static int[] tile(int[] tile) {
        return new int[] {tile[COL], tile[ROW]};
    }

    public static int[] tile(int col, int row) {
        return new int[] {col, row};
    }

    public static void main(String args[]) {
        Driver.PrintTutorial();
        while (true)
            Driver.main(args);
    }
}

class Driver {
    public static String ESC_BLACK = "\033[30m";
    public static String ESC_RED = "\033[31m";
    public static String ESC_GREEN = "\033[32m";
    public static String ESC_YELLOW = "\033[33m";
    public static String ESC_BLUE = "\033[34m";
    public static String ESC_MAGENTA = "\033[35m";
    public static String ESC_CYAN = "\033[36m";
    public static String ESC_WHITE = "\033[37m";
    public static String ESC_RESET = "\033[0m";

    public static void main(String args[]) {
        int src = _retryPromptInt("src (0-63, R): ", 0, 63);
        int dest = _retryPromptInt("dest (0-63, R): ", 0, 63);
        while (dest == src) {
            System.out.println("Sorry! dest must be different from src");
            dest = _retryPromptInt("dest (0-63, R): ", 0, 63);
        }

        int pos = src;
        List<Integer> moves = new ArrayList<Integer>();
        moves.add(src);
        boolean onceLoadPos = true;
        int simulatedNumMoves = Solution.computeLSteps(src, dest);

        while (true) {
            if (onceLoadPos) {
                onceLoadPos = false;
            } else {
                int newPos = _retryPromptPos("position (0-63, S, D): ", pos, src, dest);
                if (!Solution.IsValidLMove(pos, newPos))
                    continue;
                pos = newPos;
                moves.add(pos);
            }
            System.out.println(displayBoard(pos, src, dest));
            System.out.println("moves: " + (moves.size() - 1) + "/" + simulatedNumMoves + " " + moves);
            if (pos == dest) {
                if (moves.size() - 1 > simulatedNumMoves)
                    System.out.println("Good! You reached the destination in " + (moves.size() - 1) +
                                       " moves! You can do faster!");
                else if (moves.size() - 1 == simulatedNumMoves)
                    System.out.println("Yay! You reached the destination in " + (moves.size() - 1) + " moves!");
                else
                    System.out.println("Whoa! You reached the destination in " + (moves.size() - 1) + 
                                       " moves! Faster than my simulation! Please tell me!");
                return;
            }
        }
    }

    public static void PrintTutorial() {
        String ColoredPlay = Driver.ESC_RED + "play" + Driver.ESC_RESET;
        String ColoredPlayer = Driver.ESC_RED + "Player" + Driver.ESC_RESET;
        String ColoredSource = Driver.ESC_MAGENTA + "Source" + Driver.ESC_RESET;
        String ColoredDest = Driver.ESC_BLUE + "Destination" + Driver.ESC_RESET;
        String ColorHighlighted = Driver.ESC_CYAN + "highlighted" + Driver.ESC_RESET;

        System.out.println("In this game, you " + ColoredPlay + " as a chess knight finding an optimal path from "
                + ColoredSource + " to " + ColoredDest);
        System.out.println("in a 8x8 chess board.");
        System.out.println(
                "First, specify the " + ColoredSource + " and " + ColoredDest + " tile numbers or R for random");
        System.out.println("On each turn, type one of the " + ColorHighlighted + " numbers. "
                + "They resemble the L movements of the chess knight.");
        System.out.println("If the " + ColoredPlayer + " is within range, you can also " + "type S or D for "
                + ColoredSource + " or " + ColoredDest);
        System.out.println("\nTry to get to the " + ColoredDest + " with as few moves as possible!");
    }

    private static int _retryPromptInt(String prompt, int min, int max) {
        while (true) {
            System.out.print(prompt);
            String line = System.console().readLine();
            Integer num = parseIntOrNull(line);
            if (num == null) {
                if (line.toUpperCase().equals("R"))
                    return 0 + (int) (Math.random() * 64);
                continue;
            }
            if (num < min || num > max)
                continue;
            return num;
        }
    }

    private static int _retryPromptPos(String prompt, int curPos, int src, int dest) {
        boolean onceSkipDisplayBoard = true;
        while (true) {
            if (onceSkipDisplayBoard)
                onceSkipDisplayBoard = false;
            else
                System.out.println(displayBoard(curPos, src, dest));
            System.out.print(prompt);
            String line = System.console().readLine();
            Integer num = parseIntOrNull(line);
            if (num == null) {
                if (line.toUpperCase().equals("D"))
                    return dest;
                if (line.toUpperCase().equals("S"))
                    return src;
                continue;
            }
            return num;
        }
    }

    public static String displayBoard(int curLoc, int src, int dest) {
        String out = "";
        String divider = "-------------------------";

        // out += "Legend: | S| (src) | D| dest | P| Position\n";

        out += divider + "\n|";
        for (int r = 0; r < 8; r++) {
            for (int c = 0; c < 8; c++) {
                int loc = 8 * r + c;
                if (loc == curLoc)
                    out += ESC_RED + " P|" + ESC_RESET;
                else if (loc == src)
                    out += _colorValidMove(loc, curLoc, ESC_MAGENTA) + " S|" + ESC_RESET;
                else if (loc == dest)
                    out += _colorValidMove(loc, curLoc, ESC_BLUE) + " D|" + ESC_RESET;
                else
                    out += _colorValidMove(loc, curLoc, ESC_WHITE) + _formatBoardCell(loc, curLoc) + ESC_RESET;
            }
            out += "\n" + divider + "\n|";
        }

        // remove extra "\n|"
        out = out.substring(0, out.length() - 2);

        return out;
    }

    private static String _formatBoardCell(int loc, int pos) {
        String out = "";

        // figure out spacing within cell
        if (loc < 10)
            out += " " + loc + "|";
        else
            out += loc + "|";

        return out;
    }

    private static String _colorValidMove(int loc, int pos, String defaultColor) {
        if (Solution.IsValidLMove(pos, loc))
            return ESC_CYAN;
        else
            return defaultColor;
    }

    public static Integer parseIntOrNull(String value) {
        try {
            return Integer.parseInt(value);
        } catch (NumberFormatException e) {
            return null;
        }
    }
}
