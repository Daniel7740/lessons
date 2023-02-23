import 'dart:io';
import 'dart:math';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';
import 'print_colors.dart';

void check() {
  final numberOfAttempts = 10000; // Кол-во попыток
  // Генерация списка с numberOfAttempts случайных чисел

  List randList = List.generate(numberOfAttempts, (_) => Random().nextInt(100));
  List<int> ans = [];
  // Первый алгоритм
  for (var i = 0; i < randList.length; i++) {
    int min = 0;
    int max = 100;
    int tryCount = 0;
    int trysUser = 0;
    int randNum1 = randList[i];
    for (var i = 0; i <= 100; i++) {
      trysUser++;
      tryCount = ((min + max) / 2).round();
      if (randNum1 == tryCount) {
        break;
      }
      if (tryCount == min && tryCount == max) {
        printYellow('Вы мухлевщик! Я с вами больше не играю!\nИгра окончена!');
        exit(200);
      } else {
        if (randNum1 > tryCount) {
          min = tryCount;
        } else if (randNum1 < tryCount) {
          max = tryCount;
        }
      }
    }
    ans.add(trysUser);
  }
  int sumFirst = ans.sum;
  double countFirst = sumFirst / numberOfAttempts;
  printBlue('Среднее арифметическое первого алгоритма: $countFirst');

// Второй алгоритм
  for (var i = 0; i < randList.length; i++) {
    Random random = Random();
    int min = 0;
    int max = 100;
    int trysUserV2 = 0;
    int randNum = randList[i];
    for (var i = 0; i <= 100; i++) {
      trysUserV2++;
      int guess = min + random.nextInt(max - min);
      if (randNum == guess) {
        break;
      }
      if (guess == min + 1 && guess == max - 1) {
        printYellow('Вы мухлевщик! Я с вами больше не играю!\nИгра окончена!');
        exit(200);
      } else {
        if (randNum > guess) {
          min = guess;
        } else if (guess < guess) {
          max = guess;
        }
      }
    }
    ans.add(trysUserV2);
  }
  int sumSecond = ans.sum;
  double countSecond = sumSecond / numberOfAttempts;
  printCyan('Среднее арифметическое второго алгоритма: $countSecond');

  if (countFirst < countSecond) {
    printMagenta('Первый алгоритм быстрее');
  } else if (countFirst > countSecond) {
    printMagenta('Втророй алгоритм быстрее');
  } else {
    printMagenta('Алгоритмы равны по угадыванию');
  }
}
