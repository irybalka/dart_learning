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
  bool hasMoney = false;
  bool isStoreOpen = false;
  print(ShoppingCheck(hasMoney, isStoreOpen));

  //ternary operations
  double temperature = 40;
  print(TernaryFunction(temperature));

  //assignment operations
  double score = 0;
  int correctAnswers = 17;
  int mistakes = 3;
  int totalQuestions = 20;
  score = AssignmentFunction(correctAnswers, mistakes, totalQuestions);
  print(score);

  //conditional operations
  int examScore = 91;
  print(ConditionalFunction(examScore));

  //switch operation
  int dayNumber = 7;
  print(WeekDefinder(dayNumber));

  //for loop
  // "all" to print all numbers. "even" - to print only even numbers
  String loopTask = 'even';
  GetLoopNumbers(loopTask);

//while loop
  GetWhileNumbers();

// break and continue
  BreakContinueProcedure();
}

String Comparison(var number) {
  if (number is! num) {
    return "Input is not a number";
  }

  String comparison50 = number > 50 ? "Greater than 50" : "Not greater than 50";
  String comparison100 = number < 100 ? "Less than 100" : "Not less than 100";
  String devision5 = number % 5 == 0 ? "Divisible by 5" : "Not divisible by 5";
  return "$comparison50," + " $comparison100," + " $devision5";
}

String ShoppingCheck(bool hasMoney, bool isStoreOpen) {
  if ((hasMoney == !isStoreOpen) ||
      (hasMoney == false && isStoreOpen == false)) {
    return "No shoping! You should wait!!";
  } else {
    return "Shop now!!!!";
  }
}

String TernaryFunction(double temperature) {
  return temperature > 25
      ? "Тепло"
      : temperature < 10
          ? "Дуже холодно"
          : "Прохолодно";
}

double AssignmentFunction(
    int correctAnswers, int mistakes, int totalQuestions) {
  double score = 0;
  score += correctAnswers * 10;
  score -= mistakes * 5;
  score *= 2;
  score /= totalQuestions;
  return score;
}

String ConditionalFunction(int examScore) {
  String result1 = "";
  String result2 = "";
  if (examScore > 90) {
    result1 = "Відмінно.";
  } else if ((examScore <= 90) && (examScore >= 75)) {
    result1 = "Добре.";
  } else if ((examScore <= 74) && (examScore >= 60)) {
    result1 = "Задовільно.";
  } else {
    result1 = "Не здано";
  }
  if (examScore < 20) {
    result2 = "Повторити курс";
  }

  return result1 + " " + result2;
}

String WeekDefinder(int dayNumber) {
  switch (dayNumber) {
    case 1:
      return "Понеділок";
    case 2:
      return "Вівторок";
    case 3:
      return "Середа";
    case 4:
      return "Четвер";
    case 5:
      return "П'ятниця";
    case 6:
      return "Субота. Вихідний";
    case 7:
      return "Неділя. Вихідний";
    default:
      return "Невірний номер дня";
  }
}

void GetLoopNumbers(String loopTask) {
  int total = 0;
  for (int i = 1; i < 11; i++) {
    total += i;
    if (loopTask == 'all') {
      print(i);
    } else if ((loopTask == 'even') && (i % 2 == 0)) {
      print(i);
    }
  }
  print("total sum is $total");
}

void GetWhileNumbers() {
  var initialValue = 10;
  while (initialValue >= 0) {
    print(initialValue.toString() +
        " " +
        ((initialValue % 2 == 0) ? "Парне число" : "Непарно число"));
    initialValue--;
  }
}

void BreakContinueProcedure() {
  for (int i = 1; i < 21; i++) {
    if (i % 3 == 0) {
      continue;
    }
    if (i > 15) break;
    print(i);
  }
}
