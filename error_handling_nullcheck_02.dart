/*
void main() {
  Area area = Area();

  area.height = 10;
  area.calculateRectangleArea();
}

class Area {
  double? width;
  double? height;

//Method to calculate area of rectangle
  void calculateRectangleArea() {
    print(width); //output = null
    try {
      double areaOfRectangle = width! * height!;
      print("Area of Rectangle is ${areaOfRectangle}");
    } catch (e) {
      print(e);
    }
  }
}
*/

// above is without if statement message
// output - error message will come in blue line and not in red line
/*
void main() {
  Area area = Area();

  area.height = 10;
  area.calculateRectangleArea();
}

class Area {
  double? width;
  double? height;

//Method to calculate area of rectangle
  void calculateRectangleArea() {
    print(width); //output = null
    try {
      if (width == null) {
        print("Value of width cannot be null");
        width = 0;
      }
      double areaOfRectangle = width! * height!;
      print("Area of Rectangle is " + areaOfRectangle.toString());
    } catch (e) {
      print(e);
    }
  }
}
*/

// upper second code - this can be done for height also.

// third code from here- usimg ?? operator
// ? = this means whenever null value comes assign 0 to it.
// here we replace if statement

void main() {
  Area area = Area();

  area.height = 10;
  area.calculateRectangleArea();
}

class Area {
  double? width;
  double? height;

//Method to calculate area of rectangle
  void calculateRectangleArea() {
    print(width); //output = null
    try {
      double tempWidth = width ?? 0;
      double tempHeight = height ?? 0;

      double areaOfRectangle = tempWidth * tempHeight;

    // Also can directly do like this:
    //  double areaOfRectangle = width ?? 0 * (height ?? 0);
    // whenever it will get null, it will multiply it by zero

      print("Area of Rectangle is " + areaOfRectangle.toString());
    } catch (e) {
      print(e);
    }
  }
}

// if you dont want any of this null handling assign "0" values initially or any default value
// most recommended - here null check will not be required because values will never be null 
// and if null comes it values will be bydefault zero
/*
class Area {
  double width = 0;
  double height = 0;
*/

// next will see to pass parameters directly to arguments to make extra code less and simple

