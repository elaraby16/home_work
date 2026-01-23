// Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
// '/products', '/profile', or other). Handle each case with appropriate output, including maps and null
// safety where needed
void main() {
  String currentPath = '/profile';
  Map<String, String?> data = {'user name': null};
  switch (currentPath) {
    case '/':
      print('welcome to home page');
      break;
    case '/products':
      print('Here is the list of products');
      break;
    case '/profile':
      print('User Profile:');
      String? name = data['username'];
      print('Name: ${name ?? 'Guest'}');
      break;
    default:
      print('error 404');
  }
}
