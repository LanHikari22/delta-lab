#include <string>
#include <iostream>

using namespace std;

class Solution {
public:
    string longestPalindrome(string s) {
        int out_i, out_j = 0;
        // std::pair<int, int> out = auto [0, 0];
        int len = s.length();
        int max = 0;
        for (int i=len-1; i>=0; i--) {
            for (int j=0; j<=i-1; j++) {
                cout << i << " " << j << ": " << s.substr(j, i-j+1) << std::endl;
                if (s[i] == s[j] && is_palindrom(s.substr(j, i-j+1))) {
                    int size = i-j+1;
                    if (size >= max) {
                        out_i = i;
                        out_j = j;
                        max = size;
                    } else if (max > i-j+1) break;
                } 
            }
            if (max > i) break;
        }
        
        if (out_i == 0 && out_j == 0 && len >= 1) return s.substr(0,1);
        return s.substr(out_j, out_i-out_j+1);
    }
    
    bool is_palindrom(string s) {
        int len = s.length();
        for (int i=0; i<len/2; i++) {
            if (s[i] != s[len-1-i]) return false;
        }
        return true;
    }
};

#ifdef CUNIT_TESTS

#endif
