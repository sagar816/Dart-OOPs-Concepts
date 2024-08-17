// void main() {
//   print("Hello");
// }

// variables two types: nullable , non nullable variables
// non nullable = when you create you assign value to it
// nullable = create variable but does not assign value to it

void main() {
  int? age; //nullable variable - after adding question mark?
  int age1 = 10; //non nullable

  print(
      age); // now it is showing error because still it is not nullable, we require to add question mark ? to its data type to make it nullable
  // before question mark = output of print = error
  // after question mark = output of print = null
  // now we can assign the value to nullable variables after wards

  age = 20;
  print(age);
  // So the purpose of nullable variables is hat we can assign the values later to it,
  // so even if you forget to assign the values, it will not show error it will give null and program will run

  //other data type example
  String? name;
  print(name);
  // output = null

  // always good pracive to assign values to variables

// in future in scenario where values can be null
// in this case handle like this

  if (name == null) {
    print("name is null");
  }

//assigning empty quotes to keep it free from null value and we will be sure that this name will never be null
  String name1 = '';
  print(name1);
  // output = blank
}
