// abstract class
// benefit or solve problem of - reusabilty of code improve, duplication of code

void main() {
  Car car = Car();
  car.start();
  car.stopped();

  Bike bike = Bike();
  bike.start();
  bike.stopped();
}

abstract class Vehicle {
  void start();
  void stopped();
}

class Car extends Vehicle {
  @override
  void start() {
    print("Car Engine starts");
  }

  @override
  void stopped() {
    print("Car Engine stopped");
  }
}

class Bike extends Vehicle {
  @override
  void start() {
    print("Bike Engine starts");
  }

  @override
  void stopped() {
    print("Bike Engine stopped");
  }
}
