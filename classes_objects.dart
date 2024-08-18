// learn about classes and objects
// attributes of classes
// properties of classes
// functions of classes
// methods of classes
// perform operations in functions
// defination of class
// how to create objects
// what are objects
// purpose of creating objects
// how to create class
// keywords of class

// defination of class = class is a blueprint for creating objects. consider blueprint as a model or saacha.
// give iphone model and millions of copies made using one model as an example

// to make class:
// reserved keyword = class
// class name = pascal case format. Start with capital Letter. eg: Person, MovieModel
// class body = { }
// String? name; - made variable and indicated that it cannot be null and will be late initialised
// the variables you create are called as attributes - person class attribute is name. Also called as fields
// In this fields and attributes we store data
// All this we can do in main() also, but we do it in class and understand its purpose

void main() {
  Person person = Person();
  person.displayInfo();
}

class Person {
  String myName = "Sagar";
  String fatherName = "Ashok";
  int myAge = 32;

  // print(myAge); // you cant print directly here in class, if you do this in main() it will work, you need to make methods
  // methods are functions in which we can perform some operations

  void displayInfo() {
    print("My Name is ${myName}");
    print("My Age is ${myAge}");
    print("My Fathers Name is ${fatherName}");
  } // still if you run it will not work, coz you need to call this method/class, now this class is just a blueprint of objects
}

// Now in main() - after writing class
// We will make objects of the class
// Defination: Objects are instance of a class
// Person person = Person() - this is called initialization or creating objects or creating instances
// person(dot) = using this all the functionalities and properties inside class can be accessible


// after running - displayInfo();
// Now we have a problem - here we have static values, they cannot be changed, 
// It is never recommended that you pass static values to it
// So we remove initialization and make it non nullable - String? name; 
// String? name;  - that this value cannot be null or we will initialize it later
// So we will see this in classes_objects_02.dart

