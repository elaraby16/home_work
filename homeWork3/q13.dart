// Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
// statement to print a message for each grade
//
void main() {
  int grade = 86;
  switch (grade) {
    case > 84 && <= 100:
      print('your grade is : A');
      break;
    case > 70 && <= 84:
      print('your grade is : B');
      break;
    case > 60 && <= 70:
      print('your grade is : C');
      break;
    case > 50 && <= 60:
      print('your grade is : D');
      break;
    case < 40:
      print('your grade is : F');
      break;
    default:
      print('the grade is not correct');
  }
}
