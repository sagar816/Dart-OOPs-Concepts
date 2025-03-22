//keyword: get
//keyword: set

class Person {
  // String name;  //publicly accessbile
  String _name; //private variable - only accessible to this file
  int _age;

  //Constuctor
  Person(this._name, this._age);

//get
  String get name_method =>
      _name; //this can be list, integer, class objects, list of objects
  int get age_method => _age;

//set
  set setAge(int age) {
    if (age > 0) {
      _age = age;
    }
  }

  set setName(String name) {
     _name = name;
  }  


  //Method to display person details
  void displayInfo() {
    print('Name: $_name, Age: $_age');
  }
}
