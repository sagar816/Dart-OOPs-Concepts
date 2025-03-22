//Inheritance - Child class inherits properties and methods from parent class. It calls parent class.

/*
Parent(Base Class, Super Class, Parent Class)
--->
Child (Sub Class, Derived Class, Child Class)
-----> 
Child (Sub Class, Derived Class, Child Class)

Inheritance in Dart is a key feature of object-oriented programming that allows a subclass or derived class to inherit properties and methods from another class(known as a superclass or base class). This enables code reusability and establishes a natural heirarchy between classes.

extends keyword:
- In dart, the extends keyword is used to indicate that one class is inheriting from another class.

Access to Superclass Members:
- The subclass can access public and protected properties and methods of the superclass.
- Private members (declared with a leading underscore) are not accessible outside the file they are declared in.

Overriding Methods:
- Subclasses can override methods of the superclass to provide specific implementations using the @override annotation.

Constructors:
- Constructors of the superclass are not inheroted by the subclass, but the subcalss can call the superclass constructor usig the super keyword.

 */

void main() {
  //Overridden method in car
  Student student = Student();
  student.name = "Sagar T";
  student.age = 25;
  student.display();
  student.regNumber = "123@abc";
  student.sem = "8th";
  student.displaySchoolInfo();
}

//parent class
class Person {
  //Properties
  String? name;
  int? age;

  //Method
  void display() {
    print("name: $name");
    print("Age: $age");
  }
}

// child class
class Student extends Person {
  //Fields
  String? regNumber;
  String? sem;

  //method
  void displaySchoolInfo() {
    print("Registratio number: $regNumber");
    print("Semester: $sem");
  }
}

class Employee extends Person{ 
   // try
}