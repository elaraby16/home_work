// Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
// courses: one with custom duration and one with the default. Print both.
class Course {
  String title;
  int duration;

  Course(this.title, {this.duration = 3});
}
void main() {
  Course course1 = Course('Dart Programming', duration: 6);
  Course course2 = Course('Flutter Development');

  print('Course: ${course1.title}, Duration: ${course1.duration} months');
  print('Course: ${course2.title}, Duration: ${course2.duration} months');
}