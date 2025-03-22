// Encapsulation: To hide data, withinh the class or in library to prevent its use from external resources
/*
Class has some public data and private data
Private data(like variables)  is not directly accessible outside class wherever you will import it

To get that data we need o write some specialized method to access private data from that class or library. this phenomena is called encapsulation. 
*/
import '09_encapsulation_02.dart';

void main() {
  Person person = Person('Ajay', 22);
  person.displayInfo();
  person.setAge = 30;
  person.setName = "Sagar";
  print(person.name_method);
  print(person.age_method);
  person.displayInfo();
}

// class Person {
//   // String name;  //publicly accessbile
//   String _name;  //private variable - only accessible to this file
//   int _age;

//   //Constuctor
//   Person(this._name, this._age);

//   //Method to display person details
//   void displayInfo() {
//     print('Name: $_name, Age: $_age');
//   }
// }
