// in oops we provide or assign values to objects, so using constructor method this process becomes more easy
// constructor defination = it is an specialized method to initialize objects

// constructor method is created or is called automatically when you create objects
// and the properties and attributes of objects are initialised automatically

// so it is a simple method to initialise objects and in objects there are properties and
// we need to pass values to that properties, so automatically it initialises when you create objects

void main() {
  Student student1 = Student();

  student1.displayInfo();
}

class Student {
  String? name;
  int? age;

  Student(){                     // constructor created
    print("Constructor Called");
  }     

  void displayInfo() {
    print("--------------------");
    print("Name : ${name}");
    print("Age : ${age}");
    print("--------------------");
  }
   
}

// now in first code above - output = name = age = null
// as earlier in main we can initialize values as student1.name = "sagar";
// output:  name = sagar; age = null
// but we have one more way and that is through constructors

// to make constuctor write Student() in class, so when you make object
// this constructor method will be called automatically.
// check by writing print statement inside constructor method

// Now consider constructor as a function, so it can take parameters and we put name 
// as a parameter in next file - constructors_02.dart
