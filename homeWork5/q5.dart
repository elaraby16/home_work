// Q5. Multiplication Table with Sum - Ask the user for a number. - Print its multiplication table up to
// 10, then calculate the sum of all results.
import 'dart:io';
void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);
  int sum = 0;

  print("Multiplication table for $number:");
  for (int i = 1; i <= 10; i++) {
    int result = number * i;
    sum += result;
    print("$number x $i = $result");
  }

  print("Sum of all results: $sum");
}