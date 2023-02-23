import 'dart:io';

import 'check.dart';
import 'pc_number.dart';
import 'print_colors.dart';
import 'versus.dart';
import 'your_number.dart';
import 'your_number2.dart';

void main() {
  printBlue('\nВыберите режим игры:\n');
  printCyan('   1 - Число загадываете вы (вариант отгадывания математический)');
  printCyan('   2 - Число загадываете вы (вариант отгадывания рандомный)');
  printCyan('   * - Проверка алгоритмов на скорость угадывания');
  printCyan('   3 - Число загадыват компуктер');
  printCyan('   4 - Человек против машины');
  List ad = [];
  String choseNumber = (stdin.readLineSync()!);
  if (choseNumber == '1') {
    printMagenta(
        'Режим: "Число загадываете вы (вариант отгадывания математический)"');
    user(ad);
  } else if (choseNumber == '2') {
    printMagenta(
        'Режим: "Число загадываете вы (вариант отгадывания рандомный)"');
    userV2();
  } else if (choseNumber == '*') {
    printMagenta('Режим: "Проверка алгоритмов на скорость угадывания"');
    check();
  } else if (choseNumber == '3') {
    printMagenta('Режим: "Число загадыват компуктер"');
    pc(ad);
  } else if (choseNumber == '4') {
    printMagenta('Режим: "Человек против машины"');
    vs();
  } else {
    printRed('Ошибка! Число $choseNumber вне диапазона!');
  }
}
