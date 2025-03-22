// inheritance of constructors
// how to inherent parent class constructor in child class
// super key word
// when a class with custom constructor is inherited you need to use super and parent constructor will be called first
void main() {
  Macbook macbook = Macbook("Apple", 1400, "14");
  macbook.displayInfo();
}

//Base class
class Laptop {
  String? brand;
  double? price;

  //constructors with parameters
  Laptop(this.brand, this.price) {
    print('laptop call');
  }

  void displayInfo() {
    print('Brand: $brand, Price: $price');
  }
}

class Macbook extends Laptop {
  // Macbook() : super("xc", 333);  // see this also
  String model;
  Macbook(String brand, double price, this.model)
      : super(brand, price); // see this also

  void displayInfo() {     //this class method will get priority for print
    super.displayInfo();   //parent class method
    print("Model: $model");
  }
}
