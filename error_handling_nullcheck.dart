// here we will see error handling while making objects
// mostly in OOPs errors are related to null checks
// errors are exceptions that you need to catch and tell them to do in correct way in a message
// null check operator = !
// if in your program there is an null check error, red lines will come and the program will stop working
// but we dont want the program to stop or end, but we want to handle the error gracefully
// so we do error handling for smooth user experience

void main() {
  Area area = Area();
  // area.width = 5;
  area.height = 10;
  area.calculateRectangleArea();
}

class Area {
  double? width;
  double? height;

//Method to calculate area of rectangle
  void calculateRectangleArea() {
    print(width);  //output = null
    double areaOfRectangle = width! * height!;
    print("Area of Rectangle is ${areaOfRectangle}");
  }
}


// error: for " * height" > The argument type 'double?' can't be assigned to the parameter type 'num'.
// QuickFix = add null check Operator = !
// run first and you will get output = 50.0

// now here one problem is there ,in class we have said that, width and height cannot be null (it should be non nullable)
// now remove width from main and print width in calculateRectangleArea
// output = Null = Unhandled exception: Null check operator used on a null value
// now these error in red will break/stop your program - so use error handling

// now above explanation - one value "width" is null - that we know, with that you have 
// used null check operator in method, that indicates that this value cannot be null
// so to avoid this - use try{}catch(e = exception){} block
// and also use if statement to show message

// this try catch will show in next file = error_handling_nullcheck_02.dart
