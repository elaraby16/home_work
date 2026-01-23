// Write a Dart program that evaluates three integer variables with different logical and comparison
// expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
// one of the expressions
void main() {
  //sides of the triangle
  int x = 12;
  int y = 5;
  int z = 12;

  if (x == y && x == z) {
    print('Equilateral Triangle');
    print('Rule passed');
  } 
  else if (x == y || x == z || y == z) {
      print('Isosceles Triangle');
       print('Rule passed');
    } 
  else {
    print('Rule failed');
  }
}
