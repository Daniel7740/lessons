// Calculator
// To run in terminal input in terminal path to bin and input dart calculator.dart
import 'dart:io';
import 'dart:math';

void main() {
  print('Введите первое число: ');
  String firstStr = stdin.readLineSync()!;
  double firstNum = double.tryParse(firstStr) ?? 0;
  if (firstNum == 0 && firstStr != '0') {
    print('Ошибка! Посчитать текст невозможно.');
    exit(200);
  }

  print(
      'Введите один из операторов: \n +\n -\n *\n /\n для возведения в степень нажмите: ^\n ');
  String operation = stdin.readLineSync()!;

  if (operation != '+' &&
      operation != '-' &&
      operation != '*' &&
      operation != '/' &&
      operation != '^') {
    print('Ошибка! Введён неверный оператор.');
    exit(200);
  }

  if (operation == '^') {
    print('Введите желаемую степень:');
    String exponentiateStr = stdin.readLineSync()!;
    double exponentiateNum = double.tryParse(exponentiateStr) ?? 0;
    if (exponentiateNum == 0 && exponentiateStr != '0') {
      print('Ошибка! Возвести в степень текст невозможно.');
      exit(200);
    } else {
      print('Ответ: ${pow(firstNum, exponentiateNum)}');
    }
  } else {
    print('Введите второе число: ');
    String secondStr = stdin.readLineSync()!;
    double secondNum = double.tryParse(secondStr) ?? 0;
    if (secondNum == 0 && secondStr != '0') {
      print('Ошибка! Посчитать текст невозможно.');
      exit(200);
    }

    if (operation == '/' && secondNum == 0) {
      print('Ошибка! На ноль делить нельзя');
      exit(200);
    }

    switch (operation) {
      case '+':
        print('Ответ: ${firstNum + secondNum}');
        break;
      case '-':
        print('Ответ: ${firstNum - secondNum}');
        break;
      case '*':
        print('Ответ: ${firstNum * secondNum}');
        break;
      case '/':
        print('Ответ: ${firstNum / secondNum}');
        break;
      default:
    }
  }
}
