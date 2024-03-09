import 'dart:io';

void main() {
  dynamic num1 = 0, num2 = 0, operators, cal;
  dynamic result;
  while (true) {
    print('''
  Press 1 to add. 
  Press 2 to Subtract.
  Press 3 to multiply. 
  Press 4 to Divide.
  Press 0 to exit''');
    operators = int.parse(stdin.readLineSync()!);
    if (operators == 0) {
      break;
    } else if (operators >= 1 && operators <= 4) {
      print('Enter 1st Number: ');
      num1 = int.parse(stdin.readLineSync()!);
      print('Enter 2nd Number: ');
      num2 = int.parse(stdin.readLineSync()!);
    } else {
      print('Please choose a valid option.');
    }

    switch (operators) {
      case 1:
        result = num1 + num2;
        print('$num1 + $num2 = $result');
      case 2:
        result = num1 - num2;
        print('$num1 - $num2 = $result');
      case 3:
        result = num1 * num2;
        print('$num1 * $num2 = $result');
      case 4:
        if (num1 == 0) {
          print(0);
        } else if (num2 == 0) {
          print('Infinity');
        } else {
          result = num1 / num2;
          print('$num1 / $num2 = $result');
        }
    }
  }
}
