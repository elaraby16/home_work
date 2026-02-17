// Q3
// Create a class Grade with a private field _score.
// - The setter should only accept values 0–100, otherwise print 'Invalid score'.
// - Add a getter and a computed getter isPass that returns true if score ≥ 50.
// - In main(), demonstrate updating the score multiple times and printing results.
class Grade {
  double _score;

  Grade(this._score);

  double get score => _score;

  set score(double newScore) {
    if (newScore < 0 || newScore > 100) {
      print('Invalid score');
    } else {
      _score = newScore;
    }
  }

  bool get isPass => _score >= 50;
}