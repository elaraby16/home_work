  // Q7. Sentence Word Counter - Ask the user for a short sentence. - Print how many words it contains
  // and how many characters (excluding spaces).

import 'dart:io';
void main() {
  print("Enter a short sentence:");
  String sentence = stdin.readLineSync()!;

  // Counting words
  List<String> words = sentence.split(' ').where((word) => word.isNotEmpty).toList();
  int wordCount = words.length;

  // Counting characters excluding spaces
  int charCount = sentence.replaceAll(' ', '').length;

  print("Number of words: $wordCount");
  print("Number of characters (excluding spaces): $charCount");
}