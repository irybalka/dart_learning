void main() {
  //arithmetic operations
  double width = 18.4;
  double height = 30.9;
  double area = width * height;
  double perimeter = 2 * (width + height);
  int squares = area ~/ 1;
  print("The area of the rectangle is $area");
  print("The perimeter of the rectangle is $perimeter");
  print("The number of squares is $squares");


  //comparison
  double number = 771.0;
  print(Comparison(number));

  //logical operations
  bool hasMoney     = false;
  bool isStoreOpen  = false;
 print(ShoppingCheck(hasMoney, isStoreOpen));
 
 
 




}

String Comparison(var number) {
  if (number is! num) {
    return "Input is not a number";
  }

  String comparison50 = number > 50 ? "Greater than 50" : "Not greater than 50";
  String comparison100 = number < 100 ? "Less than 100" : "Not less than 100";
  String devision5     = number % 5  == 0 ? "Divisible by 5" : "Not divisible by 5";
  return "$comparison50," + " $comparison100," + " $devision5";
}

String ShoppingCheck(bool hasMoney, bool isStoreOpen) {
  if ((hasMoney == !isStoreOpen) || (hasMoney==false && isStoreOpen == false)){
    return "No shoping! You should wait!!";
  } else{
    return "Shop now!!!!";
  } 
  

  }

