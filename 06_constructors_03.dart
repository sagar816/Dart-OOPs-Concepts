// usage of "this" keyword to assign constuctor argument values to outside variables
// every thing has a purpose
// so constructor is a method to initialise objects and assign values to inside variables


void main() {
  Student student1 = Student("Rama", 55);
  Student student2 = Student("Sagar", 32);

  // student1.name = "Sagar1";  : if done this, this will override constructor argument value
  student1.displayInfo();
  student2.displayInfo();
}

class Student {
  String? name;
  int? age;

  Student(String name, int age) {
    print("Constructor Called");
    this.name = name;
    this.age = age; // usage of this keyword
  }

  void displayInfo() {
    print("--------------------");
    print("Name : ${name}");
    print("Age : ${age}");
    print("--------------------");
  }
}


// now after using "this" keyword" output : name = sagar, age = null,
// now we add age also and check output
// also check my making student2 object

// in next file we will see practical implementaion = constructors_04.dart
