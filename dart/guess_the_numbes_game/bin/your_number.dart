// Первый вариант игры, когда число загадываете Вы
import 'dart:io';

import 'print_colors.dart';

void user(userCount) {
  printBlue('Загадайте целое число от 0 до 100\n');
  printCyan('Если ваше число:\n   Больше - нажмите 1');
  printCyan('   Меньше - нажмите 2');
  printCyan('   Равно  - нажмите 3');
  int min = 0;
  int max = 100;
  int tryCount = 0;
  int trysUser = 0;
  String inputUser = '';

  do {
    trysUser++;
    tryCount = ((min + max) / 2).round();
    printBlue('\nВаше число $tryCount?');
    inputUser = stdin.readLineSync()!;
    if (inputUser == '3') {
      printGreen('Я угадал число $tryCount за $trysUser попыток\n\n');
      break;
    }
    if (tryCount == min + 1 || tryCount == max) {
      printYellow('Вы мухлевщик! Я с вами больше не играю!\nИгра окончена!');
      exit(200);
    } else {
      if (inputUser == '1') {
        min = tryCount;
      } else if (inputUser == '2') {
        max = tryCount;
      } else {
        printRed('Ошибка! Ваше число вне диапазона 1 - 3');
      }
    }
  } while (inputUser != '3');
  userCount.add(trysUser);
}
