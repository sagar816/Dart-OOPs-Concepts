// create student class - id, name, semister, grade
// how to update value of any object or parameter using classes
// note: while creating object instance:  Student student1 = Student(); the first student is datatype,
// so it will take Student() object datatype only
// like String name = "abc", here name value will take string only or else you will get error
// after creating instance - you will pass values through object

void main() {
  Student student1 = Student();

  student1.name = "Rama";
  student1.age = 25;
  student1.grade = "B";
  student1.studentId = 888;

  student1.displayInfo();
  student1.updateGrade("A+");
  student1.displayInfo();
}

class Student {
  String? name;
  int? age;
  String? grade;
  int? studentId;

  void displayInfo() {
    print("Student name: ${name}");
    print("Age: ${age}");
    print("Grade: ${grade}");
    print("Student Id: ${studentId}");
    print(" ------------------------------------ ");
  }

  void updateGrade(String newGrade) {
    grade = newGrade;
    print("Grade updated to ${grade} for ${name}");
  }
}


// after first run it will give proper output, 
// but if we want to do changes in grade of student1, so for that we will make a updategrade method
// so which grade you need to update? from where will its value come? its value will be provided through its object

// make another object- student2 and also make updateMethod for all the parameters to practice
