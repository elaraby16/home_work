// Q7
// Ask the user to input a list of integers.
// - Print the largest number, the smallest number, and their difference.
// - Calculate the average of the list.
// - Print all numbers that are above the average.
// - Finally, print how many numbers are even and how many are odd in the list.
import 'dart:io';
void main() {
  print('Enter a list of integers separated by spaces:');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('No input provided.');
    return;
  }

  List<int> numbers = input
      .trim()
      .split(RegExp(r'\s+'))
      .map((e) => int.parse(e))
      .toList();

  if (numbers.isEmpty) {
    print('The list is empty.');
    return;
  }

  // Largest, smallest, and difference
  int largest = numbers[0];
  int smallest = numbers[0];
  int sum = 0;
  int evenCount = 0;
  int oddCount = 0;

  for (int num in numbers) {
    if (num > largest) largest = num;
    if (num < smallest) smallest = num;
    sum += num;
    if (num % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  int difference = largest - smallest;
  double average = sum / numbers.length;

  print('Largest number: $largest');
  print('Smallest number: $smallest');
  print('Difference: $difference');
  print('Average: ${average.toStringAsFixed(2)}');

    
  List<int> aboveAverage = numbers.where((n) => n > average).toList();
  print('Numbers above average: $aboveAverage');

    
  print('Even numbers: $evenCount');
  print('Odd numbers: $oddCount');
}