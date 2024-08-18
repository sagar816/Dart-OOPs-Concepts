// putting name as a parameter in constructor, but this name and the outside "name" is diffrent
// so as soon as you pass parameter in constuctor defination,
// we will get error to pass argument while creating object in void main().
// so we give one name : Student student1 = Student("Rama");
// so when object gets created, automatically this values get initialised

void main() {
  Student student1 = Student("Rama");

  student1.name = "Sagar";
  student1.displayInfo();
}

class Student {
  String? name;
  int? age;

  Student(String name) {
    print("Constructor Called");
    print(name);
  }

  void displayInfo() {
    print("--------------------");
    print("Name : ${name}");
    print("Age : ${age}");
    print("--------------------");
  }
}


// Now when you run the above code, construtor is called, but the name value is 
// not assigned to outside "name" variable
// now remove student1.name = "Sagar"; and will pass values from constuctor
/*  Also you cannot do like this:
 Student(String name) {
    print("Constructor Called");
    name = name
    print(name);   
  }
  Output : name, age:  null
*/

// So if you want that the values coming from constructor should be assigned to outside variables
// you need to use "this." keyword

// we will see this in next file constuctors_03.dart