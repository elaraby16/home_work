// Class with Method - Create a class Calculator with two attributes: num1 and num2. - Add a
// method addNumbers() that prints the sum of the two numbers. - Create an object in main() and call
// the method.
class Calculator {
  double num1;
  double num2;

  Calculator(this.num1, this.num2);

  void addNumbers() {
    double sum = num1 + num2;
    print('The sum of $num1 and $num2 is: $sum');
  }
}
void main() {
  Calculator myCalculator = Calculator(10.5, 25.0);
  myCalculator.addNumbers();
}