class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) {
      return false;
    }

    List<int> count = List.filled(26, 0);

    for (int i = 0; i < s.length; i++) {
      count[s.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
      count[t.codeUnitAt(i) - 'a'.codeUnitAt(0)]--;
    }

    for (int i = 0; i < 26; i++) {
      if (count[i] != 0) {
        return false;
      }
    }

    return true;
  }
}