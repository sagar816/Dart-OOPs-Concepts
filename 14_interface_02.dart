//interface using abstract class
// polymorphism
// in acction = inheritance, abstraction, polymorphism, abstract classes, interface
// polymorphism - one object can take different forms for its subclasses

// interface - also allows couplin - decoupling, code becomes flexible, can implement SOLID principle, makes code maintainable, can easily implement polymorphism concept, method overriding is easily accessible. So the full code becomes reusable and scalable. 

void main() {
  Dog dog = Dog();

  List<Animal> name = [Dog(), Cat()];
  // polymorphism - It allows object of diffrent type to be treated as same type with/as parent object(common object/super object)
  dog.sound();
}

// interface
abstract class Animal {
  // abstract method
  void sound();

  // non-abstract method
  void eat() {
    print("The animal is eating");
  }
}

class Dog extends Animal {
  @override // this overriding concept is polymorphism
  void sound() {
    super.eat();
    print('bark');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    super.eat();
    print('meow');
  }
}
