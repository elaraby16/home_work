class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> seen = {};
    for (int num in nums) {
      if (seen.contains(num)) {
        return true;
      }
      seen.add(num);
    }
    return false;
  }
}

void main() {
  Solution solution = Solution();

  print(solution.containsDuplicate([1, 2, 3, 1]));

  print(solution.containsDuplicate([1, 2, 3, 4]));

  print(solution.containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]));
}
