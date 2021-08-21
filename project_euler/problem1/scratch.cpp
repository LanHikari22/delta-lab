#include <bits/stdc++.h>
#include <unordered_map>
#include <vector>

using namespace std;

#define debug_stream std::cout

typedef vector<pair<char, int>> compressed_string;

class CompressedString {
public:
  compressed_string vec;
  int size;

  CompressedString(string s) {
    this->vec = compress(s);

    this->size = 0;
    for (auto pair : this->vec) {
      this->size += pair.second;
    }
  }

  CompressedString() {
      this->size = 0;
  }

private:
  /// compresses `s` into a list of (char, repeat) pairs
  static compressed_string compress(string s) {
    compressed_string res;
    // debug_stream << s << " ";

    for (char c : s) {
      if (res.size() > 0 && res[res.size() - 1].first == c) {
        res[res.size() - 1].second++;
      } else { // new entry to add
        res.push_back(pair<char, int>(c, 1));
      }
    }
    // debug_stream << "[";
    // for (auto pair : res) {
    // debug_stream << "(" << pair.first << "," << pair.second << ") ";
    // }
    // debug_stream << "] ";

    return res;
  }
};

/// given a compressed string `cs`, map out the indices of each character
/// occurance
unordered_map<char, vector<int>> map_char_indices(compressed_string cs) {
  unordered_map<char, vector<int>> res;

  for (int i = 0; i < cs.size(); i++) {
    auto pair = cs[i]; // (char, rept)
    if (res.find(pair.first) == res.end()) {
      res[pair.first] = vector<int>();
    }
    res[pair.first].push_back(i);
  }

  return res;
}

// Complete the commonChild function below.
int commonChild(string s1, string s2) {
  auto smax = (s1.size() > s2.size()) ? s1 : s2;
  auto smin = (s1.size() > s2.size()) ? s2 : s1;

  // compress both strings so we know each iteration is for a unique char
  auto cs1 = CompressedString(smax);
  auto cs2 = CompressedString(smin);

  // map put indices of the largest string
  unordered_map<char, vector<int>> idx_map = map_char_indices(cs1.vec);

  // keep track of the largest child found and the latest index into `cs1` used
  // this will satisfy that we don't pick characters we have already moved past
  CompressedString largest_child;
  CompressedString child;
  int last_idx;

  for (auto pair : cs2.vec) { // pair: (char, rept)
    char c = pair.first;
    int rept = pair.second;

    if (idx_map.find(c) == idx_map.end()) {
    } else { // c not in idx_map
      // this signals the end of the current child, so see if it's the largest
      if (child.size() != 0) {

      } else {
      }
    }
  }

  throw "commonChild(): unimplemented";
}

// Complete the whatFlavors function below.
void whatFlavors(vector<int> cost, int money) {
    // map each value and its counteract so that the one with two occurances is the right choice
    // the key is the minimum sum in a+b=c, the value is how many occurances for that pair
    unordered_map<int, int> map;
    
    for (int c1 : cost) {
        int c2 = money - c1;
        int c = min(c1, c2);
        
        if (map.find(c) == map.end())
            map[c] = 0;
        map[c]++;

        if (map[c] > 1)
            break;
    }

    throw "unimplemented";
}

int main() {
  compress("aaabbcaazdefghh");
  debug_stream << endl;
}
