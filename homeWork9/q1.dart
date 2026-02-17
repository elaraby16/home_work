// Q1
// Design an OOP model for planning trip fuel across multiple vehicle types.
// Requirements:
// - Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
// (invalid → print an error; keep previous values).
// - Create at least two specialized vehicle types that inherit from the general type and introduce one
// private field each affecting fuel usage, with validation.
// - Define a fuel computation method in the general type; specialized types must override it with their own
// rule.
// - In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
// which vehicles cannot complete the route under their own constraints (you define the constraint per
// type).
abstract class Vehicle {
  String _model;
  double _fuelEfficiency; // km per liter

  Vehicle(this._model, this._fuelEfficiency) {
    if (_model.isEmpty) {
      print('Error: Model name cannot be empty.');
      _model = 'Unknown';
    }
    if (_fuelEfficiency <= 0) {
      print('Error: Fuel efficiency must be positive.');
      _fuelEfficiency = 1.0;
    }
  }

  String get model => _model;
  double get fuelEfficiency => _fuelEfficiency;

  double calculateFuel(double distance) {
    return distance / _fuelEfficiency;
  }

  bool canCompleteTrip(double distance);
}

class Car extends Vehicle {
  double _loadWeight;

  Car(String model, double fuelEfficiency, this._loadWeight)
      : super(model, fuelEfficiency) {
    if (_loadWeight < 0) {
      print('Error: Load weight cannot be negative.');
      _loadWeight = 0;
    }
  }

  @override
  double calculateFuel(double distance) {
    double efficiencyAdjustment = 1 + (_loadWeight / 100 * 0.05);
    return (distance / fuelEfficiency) * efficiencyAdjustment;
  }

  @override
  bool canCompleteTrip(double distance) {
   
    return distance <= 500;
  }
}

class Truck extends Vehicle {
  int _cargoTypeRiskLevel;
  Truck(String model, double fuelEfficiency, this._cargoTypeRiskLevel)
      : super(model, fuelEfficiency) {
    if (_cargoTypeRiskLevel < 1 || _cargoTypeRiskLevel > 5) {
      print('Error: Risk level must be between 1 and 5.');
      _cargoTypeRiskLevel = 1;
    }
  }

  @override
  double calculateFuel(double distance) {
    return (distance / fuelEfficiency) * (1 + (_cargoTypeRiskLevel * 0.1));
  }

  @override
  bool canCompleteTrip(double distance) {
    if (_cargoTypeRiskLevel >= 4 && distance > 300) {
      return false;
    }
    return true;
  }
}

void main() {
  List<Vehicle> fleet = [
    Car('Sedan', 15.0, 200.0),
    Car('SUV', 10.0, 600.0),
    Truck('Van', 5.0, 2),
    Truck('Tanker', 4.0, 5),
  ];

  List<double> tripDistances = [100.0, 350.0, 600.0];

  for (var vehicle in fleet) {
    print('--- Vehicle: ${vehicle.model} ---');
    for (var distance in tripDistances) {
      double fuelNeeded = vehicle.calculateFuel(distance);
      bool possible = vehicle.canCompleteTrip(distance);

      print('Distance: ${distance}km | Fuel Needed: ${fuelNeeded.toStringAsFixed(2)}L');
      if (!possible) {
        print('>> ALERT: ${vehicle.model} cannot complete this route due to constraints.');
      }
    }
    print('');
  }
}
