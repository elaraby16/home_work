// Q8 Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
// print the total count of unique words.
import 'dart:io';
void main() {
  print('Enter a sentence:');
  String sentence = stdin.readLineSync() ?? '';

  List<String> words = sentence.split(' ');
  Map<String, int> wordCount = {};

  for (var word in words) {
    wordCount[word] = (wordCount[word] ?? 0) + 1;
  }

  List<String> uniqueWords = [];
  for (var entry in wordCount.entries) {
    if (entry.value == 1) {
      uniqueWords.add(entry.key);
    }
  }

  print('Unique words: ${uniqueWords.join(', ')}');
  print('Total count of unique words: ${uniqueWords.length}');
}