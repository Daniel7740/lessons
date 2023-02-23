// Второй вариант игры, когда число загадываете Вы
import 'dart:io';
import 'dart:math';

import 'print_colors.dart';

void userV2() {
  printBlue('Загадайте целое число от 0 до 100\n');
  printCyan('Если ваше число:');
  printCyan('   Больше - нажмите 1');
  printCyan('   Меньше - нажмите 2');
  printCyan('   Равно  - нажмите 3');
  Random random = Random();
  int min = 0;
  int max = 100;
  int trysUserV2 = 0;
  String inputUserV2 = '';

  do {
    trysUserV2++;
    int guess = min + random.nextInt(max - min);
    printBlue('\nВаше число $guess?');
    inputUserV2 = stdin.readLineSync()!;
    if (inputUserV2 == '3') {
      printGreen('Я угадал число $guess за $trysUserV2 попыток\n\n');
      break;
    }
    if (guess == min + 1 && guess == max - 1 || guess == 0) {
      printYellow('Вы мухлевщик! Я с вами больше не играю!\nИгра окончена!');
      exit(200);
    } else {
      if (inputUserV2 == '1') {
        min = guess;
      } else if (inputUserV2 == '2') {
        max = guess;
      } else {
        print('Ошибка! Ваше число вне диапазона 1 - 3');
      }
    }
  } while (inputUserV2 != '3');
}
