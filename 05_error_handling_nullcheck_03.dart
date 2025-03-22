void main() {
  Area area = Area();

  area.calculateRectangleArea(5.2, 4);
  // area.calculateRectangleArea(null, 10);
  // Error: The value 'null' can't be assigned to the parameter type 'double' because 'double' is not nullable.
}

class Area {
//Method to calculate area of rectangle
  void calculateRectangleArea(double width, double height) {
    print(width); //output = null
    try {
      double areaOfRectangle = width * height;

      // Also can directly do like this:
      //  double areaOfRectangle = width ?? 0 * (height ?? 0);
      // whenever it will get null, it will multiply it by zero

      print("Area of Rectangle is " + areaOfRectangle.toString());
    } catch (e) {
      print(e);
    }
  }
}
