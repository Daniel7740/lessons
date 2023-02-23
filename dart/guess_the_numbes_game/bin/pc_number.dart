//Число загадывает компьютер, Вы отгадываете
import 'dart:io';
import 'dart:math';

import 'print_colors.dart';

void pc(pcCount) {
  printBlue('Угадайте число от 1 до 100');
  Random random = Random();
  int unknownNumber = random.nextInt(100);
  int trysPc = 0;
  int inputNumber = 0;
  do {
    trysPc++;
    printCyan('\nВведите ваше число:');
    inputNumber = int.parse(stdin.readLineSync()!);
    if (inputNumber > unknownNumber) {
      print('Ваше число больше загаданного');
    } else if (inputNumber < unknownNumber) {
      print('Ваше число меньше загаданного');
    } else {
      printGreen(
          'ПОЗДРАВЛЯЮ!\nВы угадали число: $unknownNumber за $trysPc попыток\n\n');
      break;
    }
  } while (inputNumber != unknownNumber);
  pcCount.add(trysPc);
}
