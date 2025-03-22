void main() {
  Person person = Person();
  person.myName = "Sagar";
  person.myAge = 25;
  // person.fatherName = "Ashok";
  person.isStudent = true;
  person.displayInfo();

  Person person1 = Person();
  person1.myName = "John";
  person1.myAge = 33;
  person1.fatherName = "Cena";
  person1.isStudent = false;
  person1.displayInfo();
 
}

class Person {
  String? myName;
  String? fatherName;
  int? myAge;
  // bool isStudent = false;
  bool? isStudent;

  void displayInfo() {
    print("My name is ${myName}");
    print("My age is ${myAge}");
    print("My fathers name is ${fatherName}");
    print("${myName} is student? = ${isStudent}");
  }
}

// here we have not initialized the variable first - so the output is null bydefault as values are not provided
// now how will we provide values to it? for that put person(dot) and access the variables and assign values to it
// in output you will get values

// now make another object of the same class and run and see output
// also add bool value and check isStudent = true or false
// program will run in sequence, call method after values are initialized or else it will not
// take new values
// here the data can be list also and other data also

// Everything in flutter/dart is object. Objects are simply data structure in memory and 
// these objects are created with the help of classes.
// These classes contains data as well as logic (methods/functions)
 

