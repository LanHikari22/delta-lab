#include <iostream>

using namespace std;

#include <bits/stdc++.h>
#include <tuple>
#include <unordered_map>

/// includes substrings of `s[i..]` from 2 upto the end of string `s` into
/// `map2` with index `i` and includes mirrored substrings of `s[..=i]` from 2
/// downto the beginning of string `s` with index `-i`
/// this is O(n) where n is `s.length()``
void pulse(string const &s, int i, unordered_map<string, vector<int>> &map2) {
  // pulse right
  for (int j = i; j < s.length(); j++) {
    auto ss = s.substr(i, j - i + 1);
    // only include non-duplicates
    if (map2.find(ss) == map2.end())
      map2[ss] = vector<int>();
    if (std::find(map2[ss].begin(), map2[ss].end(), i+ss.length()-1) == map2[ss].end())
      map2[ss].push_back(i);
  }

  // pulse left
  for (int j = i; j >= 0; j--) {
    // get a mirrored substring as we're pulsing left
    auto ss = s.substr(j, i - j + 1);
    reverse(ss.begin(), ss.end());
    // only include non-duplicates
    if (map2.find(ss) == map2.end())
      map2[ss] = vector<int>();
    if (std::find(map2[ss].begin(), map2[ss].end(), i-ss.length()+1) == map2[ss].end())
      map2[ss].push_back(-i);
  }
}

// Complete the sherlockAndAnagrams function below.
int sherlockAndAnagrams(string s) {
  int out_count = 0;

  // map1 indexes all characters
  // map2 indexes all substrings generated from map1 anagrms. Searching
  // backwards is indicated with neg index
  unordered_map<char, vector<int>> map1;
  unordered_map<string, vector<int>> map2;

  // find the index of each character
  // if any has more than one index, they're 1-char anagrams
  for (int i = 0; i < s.length(); i++) {
    auto c = s[i];
    if (map1.find(c) == map1.end())
      map1[c] = vector<int>();
    map1[c].push_back(i);
  }

  for (auto it : map1) {
    if (it.second.size() > 1) {
      /*1-char anagram*/
      out_count++;

      // pulse each pair for higher order anagrams
      for (auto i : it.second) {
        pulse(s, i, map2);
      }
    }
  }

  // count substring anagrams
  for (auto it : map2) {
    if (it.second.size() > 1) {
      out_count++;
    }
  }

  return out_count;
}

int sum_of_mult_5_and_3(int range) {
  if (range < 0)
    return -1;

  int res = 0;

  for (int i = 1; i < range; i++) {
    if ((i % 3 == 0) || (i % 5 == 0))
      res += i;
  }
  return res;
}

int main(void) {
  int n;
  cout << "Sum of multiples of 3 and 5 up to? ";
  cin >> n;
  cout << sum_of_mult_5_and_3(n) << std::endl;
}
