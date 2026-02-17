// Q2
// Create a class Car with private fields _brand and _year.
// - Add setters that reject empty brand names and years less than 1886 (first car invention).
// - Add getters for both.
// - In main(), demonstrate creating two car objects (one valid, one invalid input).
class Car {
  String _brand;
  int _year;

  Car(this._brand, this._year);

  String get brand => _brand;

  set brand(String value) {
    if (value.isEmpty) {
      print('Invalid brand: Brand name cannot be empty');
    } else {
      _brand = value;
    }
  }

  int get year => _year;

  set year(int value) {
    if (value < 1886) {
      print('Invalid year: Year cannot be before 1886');
    } else {
      _year = value;
    }
  }
}

void main() {
  print('--- Valid Car ---');
  Car validCar = Car('Toyota', 2022);
  print('Brand: ${validCar.brand}');
  print('Year: ${validCar.year}');

  print('\n--- Invalid Car Input ---');
  Car invalidCar = Car('Unknown', 1800);
  // Demonstrating setters with invalid data
  invalidCar.brand = '';
  invalidCar.year = 1700;
  
  print('Current state of invalidCar: ${invalidCar.brand}, ${invalidCar.year}');
}