// Вы сражаетесь с компьютером в интуиции)
import 'dart:io';
import 'pc_number.dart';
import 'print_colors.dart';
import 'your_number.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

void vs() {
  printBlue(
      'Выберите количество раундов от 1 до 10\nКоличество раундов по умолчанию - 3');
  String round = stdin.readLineSync()!;
  if (round == '') {
    round = '3';
  } else if (int.parse(round) > 10) {
    printRed('Ошибка! Вы выбрали число больше 10\n');
    printBlue('Выберите количество раундов от 1 до 10');
    String round = stdin.readLineSync()!;
  } else if (int.parse(round) <= 0) {
    printRed('Вы выбрали 0 раундов\nТрухнули перед компуктером?');
    printBlue('Жми 1 - если ДА\nЖми 2 - если НЕТ');

    int yORn = int.parse(stdin.readLineSync()!);
    if (yORn == 1) {
      print('Правильно кожаный бойся нас - компуктеров!😈');
      exit(200);
    } else if (yORn == 2) {
      vs();
      exit(200);
    } else {
      printRed('Хахаха - промахнулся!');
      exit(200);
    }
  }

  for (var i = 0; i < 1; i++) {
    List<int> userCount = [];
    List<int> pcCount = [];
    for (var i = 0; i < int.parse(round); i++) {
      printCyan('\n----------Раунд: ${i + 1}----------');
      printMagenta('===Компуктер отгадывает ваше число!===');
      user(userCount);
      printMagenta('===Ваш черёд отгадывать число компуктера!===');
      pc(pcCount);
    }
    print('Счёт компуктера: $userCount');
    print('Счёт игрока: $pcCount');
    int scoreUser = userCount.sum;
    int scorePC = pcCount.sum;
    if (scoreUser < scorePC) {
      printRed(
          'Вы проиграли! - Хотя чему удивляться, куда вам кожаным до компуктера!🤖😈');
      printMagenta('Ваш счёт: $scorePC\nСчёт компуктера: $scoreUser');
      break;
    } else if (scoreUser > scorePC) {
      printGreen('Вы победили!😁 Восстание машин отменяется!🤖🚫');
      printMagenta('Ваш счёт: $scorePC\nСчёт компуктера: $scoreUser');
      break;
    } else {
      printGreen('Победила дружба! 🤖🤝👦');
      printMagenta('Ваш счёт: $scorePC\nСчёт компуктера: $scoreUser');
      exit(200);
    }
  }
}
