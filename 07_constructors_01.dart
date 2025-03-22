/* constructors - passing values in current instance
  required parameters
  default values send
*/

void main() {
  Student student1 = Student("Ramakant", 55);
  // student1.name = "Sagar1";  : if done this, this will override constructor argument value
  student1.displayInfo();
}

class Student {
  String? name;
  int? age;

  Student(this.name, this.age) {
    print("Constructor Called");
  }

  void displayInfo() {
    print("--------------------");
    print("Name : ${name}");
    print("Age : ${age}");
    print("--------------------");
  }
}


//Default Values in next Part
