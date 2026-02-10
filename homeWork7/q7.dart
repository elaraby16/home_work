// Q7 Ask the user for a number (e.g., 9875). Keep summing its digits until the result is a single digit.
// Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)
import 'dart:io';
void main() {
  print('Enter a number:');
  String input = stdin.readLineSync() ?? '';
  int number = int.tryParse(input) ?? 0;

  while (number >= 10) {
    int sum = 0;
    while (number > 0) {
      sum += number % 10;
      number ~/= 10;
    }
    number = sum;
  }

  print('The final single-digit result is: $number');
}