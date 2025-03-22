// interface
// Interface provides a syntax that class must follow
// Two ways to make - concrete class and abstract class
// Concrete class is your default class
// keyword - implements
// override - gives you ability to change body or behaviour

// interface class, concrete class

void main() {
  MacBook macBook = MacBook();
  macBook.turnon();
  macBook.turnOff();
}

class Laptop {
  void turnon() {
    print("Laptop turn on");
  }

  void turnOff() {
    print("Laptop turn off");
  }
}

class MacBook implements Laptop {
  @override
  void turnon() {
    print("Mac turn On");
  }

  @override
  void turnOff() {
    print("Mac turn Off");
  }
}
