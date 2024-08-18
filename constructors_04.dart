// practical implementation - passing list of student objects with
// "constructor data" and put for each to print all
// here we have added data in the list by "model". The data passing as 
// argument while creating objects is also called "model"
// afterwards, you can fetch thelist, print the list, 

void main() {
  List<Student> stuData = [
    //so we have a list which contains Student objects
    Student("Raj", 32),
    Student("Ram", 22),
    Student("Bal", 40)
  ];

// iterate using stuData to access values from objects created using list

  stuData.forEach((element) {
    // print(element.name);
    print('name : ${element.name} and age : ${element.age}');  //output proper
  });
}

class Student {
  String? name;
  int? age;

  Student(String name, int age) {
    // print("Constructor Called");
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


/* output of 
  stuData.forEach((element) {
    print(element.name);
  });
output: 
Raj
Ram
Bal
*/

// so in web student portals - they are showing list of data by passing values through constructor and put loop
// other "for" can also be used. eg: for.stuName...
// here we have added data in the list by "model". The data passing as argument while creating objects is also called "model"