// Create a program that calculates the factorial of 6 and prints the result.
void main() {
  int x = 6;
  int factorial6 = 1;
  while (x > 0) {
    factorial6 *= x;
    x--;
  }
  print(factorial6);
}
