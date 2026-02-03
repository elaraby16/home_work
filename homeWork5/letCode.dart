
bool isPalindrome(String s) {
  String filtered = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  String reversed = filtered.split('').reversed.join('');
  return filtered == reversed;
}