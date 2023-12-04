import 'dart:io';

class Calculator {
  Future<int> adder(int num1, int num2) async {
    int sum = num1 + num2;
    await Future.delayed(Duration(seconds: 5));
    return sum;
  }

  Future<int> subtractor(int num1, int num2) async {
    int difference = num1 - num2;
    await Future.delayed(Duration(seconds: 5));
    return difference;
  }

  Future<int> multiplier(int num1, int num2) async {
    int product = num1 * num2;
    await Future.delayed(Duration(seconds: 5));
    return product;
  }

  Future<double> divider(int num1, int num2) async {
    await Future.delayed(Duration(seconds: 5));
    double quotient = num1 / num2;
    if (num2 == 0) {
      // ignore: deprecated_member_use
      throw IntegerDivisionByZeroException();
    }
    return quotient;
  }
}

void main() async {
  Calculator calculator = Calculator();
  stdout.write("Hello, Enter two numbers:\nNum1: ");
  var num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Num2: ");
  var num2 = int.parse(stdin.readLineSync()!);

  print("1. Addition\n2. Subtraction\n3. Multiplication\n4. Division");
  stdout.write("Enter your operation:");
  String? choice = stdin.readLineSync();
  switch (choice) {
    case '1':
      print("The sum is: ${await calculator.adder(num1, num2)}");
      break;
    case '2':
      print("The difference is: ${await calculator.subtractor(num1, num2)}");
      break;
    case '3':
      print("The product is: ${await calculator.multiplier(num1, num2)}");
      break;
    case '4':
      try {
        print("The quotient is: ${await calculator.divider(num1, num2)}");
      } catch (e) {
        print('An Error occured:$e');
      }
      break;
    default:
      print("Invalid choice.");
  }
}
