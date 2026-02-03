// Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user
// guess up to 3 times. If they fail, reveal the correct number.
import 'dart:io';
import 'dart:math';
void main() {
  Random random = Random();
  int randomNumber = random.nextInt(20) + 1;
  int maxTries = 3;
  bool hasGuessedCorrectly = false;

  print("Guess the number between 1 and 20. You have $maxTries tries.");

  for (int attempt = 1; attempt <= maxTries; attempt++) {
    print("Attempt $attempt: Enter your guess:");
    int userGuess = int.parse(stdin.readLineSync()!);

    if (userGuess == randomNumber) {
      print("Congratulations! You've guessed the correct number: $randomNumber");
      hasGuessedCorrectly = true;
      break;
    } else if (userGuess < randomNumber) {
      print("Too low!");
    } else {
      print("Too high!");
    }
  }

  if (!hasGuessedCorrectly) {
    print("Sorry, you've used all your tries. The correct number was: $randomNumber");
  }
}