// Q4. Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
// numbers, and then calculate the difference between them.
import 'dart:io';
void main() {
  List<int> numbers = [];

  print("Enter 5 numbers:");
  for (int i = 0; i < 5; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  int largest = numbers[0];
  int smallest = numbers[0];

  for (int num in numbers) {
    if (num > largest) {
      largest = num;
    }
    if (num < smallest) {
      smallest = num;
    }
  }

  int difference = largest - smallest;

  print("Largest number: $largest");
  print("Smallest number: $smallest");
  print("Difference between largest and smallest: $difference");
}