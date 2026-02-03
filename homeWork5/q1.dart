// Q1. Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average.
// Then, check if the average is greater than 50 or not.
import 'dart:io';

void main() {

  double num1 = double.parse(stdin.readLineSync()!);
  double num2 = double.parse(stdin.readLineSync()!);
  double num3 = double.parse(stdin.readLineSync()!);
  double sum = num1 + num2 + num3;
  double average = sum / 3;
  print("Sum: $sum");
  print("Average: $average");
  if (average > 50) {
    print("Result: The average is greater than 50.");
  } else {
    print("Result: The average is NOT greater than 50.");
  }
}

