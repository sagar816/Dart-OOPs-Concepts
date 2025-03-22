// passing data in constructor
// default Values = { } , can override
// after using { } = you require to use parameter name while creating object
// required

void main() {
  // Student student1 = Student(name: "Rama", age: 55, email: "a@gmail.com");
  // student1.name = "Sagar1";  : if done this, this will override constructor argument value
  // student1.displayInfo();


List<Student> student = [
  Student(age: 22, email: "a@gmail.com"),
  Student(name: "Ajay", age: 26, email: "b@gmail.com"),
  Student(name: "Akash", age: 67, email: "c@gmail.com"),
];

student.forEach((element){ 
  print("name: ${element.name}, age: ${element.age}, email: ${element.email}");
});
}

class Student {
  String? name;
  int? age;
  String? email;

  Student({this.name = "Sagar", this.age, required this.email}) {
    print("Constructor Called");
  }

  void displayInfo() {
    print("--------------------");
    print("Name : ${name}");
    print("Age : ${age}");
    print("Email : ${email}");
    print("--------------------");
  }
}
