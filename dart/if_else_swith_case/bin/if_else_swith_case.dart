// Home work 4 (Lesson 5)
import 'dart:io';

void main() {
/* 1) Пользователь вводит порядковый номер пальца руки. Необходимо показать его название на экран. 
Finger = 1 ➞ “большой палец” */

  print('Укажите номер пальца руки, где 1 - большой палец: ');
  int finger = int.parse(stdin.readLineSync()!);
  switch (finger) {
    case 0:
      print('Очень жаль, что у вас нет пальцев');
      break;
    case 1:
      print('Большой палец');
      break;
    case 2:
      print('Указательный палец');
      break;
    case 3:
      print('Средний палец');
      break;
    case 4:
      print('Безымянный палец');
      break;
    case 5:
      print('Мезинец');
      break;
    default:
      print('Ошибка, число: $finger - вне диапазона!');
  }

/*2) В переменной min лежит число от 0 до 59. Определите в какую четверть часа попадает это число (в первую, 
вторую, третью или четвертую).*/

  print('Введите число от 0 до 59: ');
  int min = int.parse(stdin.readLineSync()!);
  if (min >= 0 && min <= 15) {
    print('Число $min попадает в первую четветь');
  } else if (min >= 16 && min <= 30) {
    print('Число $min попадает во вторую четветь');
  } else if (min >= 31 && min <= 45) {
    print('Число $min попадает в третью четветь');
  } else if (min >= 46 && min <= 59) {
    print('Число $min попадает в четвётрую четветь');
  } else {
    print('Число вне диапазона');
  }

/*3) Переменная lang может принимать 2 значения: ru; en;. Если она имеет значение ru, то в переменную arr 
запишем массив дней недели на русском языке, а если имеет значение en; – то на английском.*/

  print('Введите одно из значений "ru" или "en"');
  var lang = stdin.readLineSync()!;
  if (lang == 'ru') {
    var arr = [
      'Понедельник',
      'Вторник',
      'Среда',
      'Четверг',
      'Пятница',
      'Суббота',
      'Воскресенье'
    ];
    print(arr);
  } else if (lang == 'en') {
    var arr = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];
    print(arr);
  } else {
    print(
        'Значение вне диапазона, пожалуйста проверьте правильность набранных символов!');
  }

/*4) Дана строка, состоящая из символов, например, 'abcde'. Проверьте, что первым символом этой строки является буква 'a'. Если это так - выведите 'да', в противном случае выведите 'нет'. */

  String str = 'abcde';
  if (str[0] == 'a') {
    print('Да');
  } else {
    print('Нет');
  }

/*5) Переменная num может принимать одно из значений: 1, 2, 3 или 4. Если она имеет значение '1', то в переменную result запишем 'зима', если имеет значение '2' – 'лето' и так далее. */

  print('Введите число от 1 до 4: ');
  int num = int.parse(stdin.readLineSync()!);
  String result = 'Введённое число вне диапазона от 1 до 4';
  switch (num) {
    case 1:
      result = 'Зима';
      break;
    case 2:
      result = 'Весна';
      break;
    case 3:
      result = 'Лето';
      break;
    case 4:
      result = 'Осень';
      break;
  }
  print(result);

/*6) Если переменная a меньше нуля, то выведите 'Верно', иначе выведите 'Неверно'. Проверьте работу скрипта при a, равном 1, 0, -3. */

  print('Введите число для проверки:');
  int a = int.parse(stdin.readLineSync()!);
  if (a < 0) {
    print('Верно');
  } else {
    print('Неверно');
  }

/*7) Дана строка из 6-ти цифр. Проверьте, что сумма первых трех цифр равняется сумме вторых трех цифр. Если это так - выведите 'да', в противном случае выведите 'нет'. */

  String str6 = '132133';
  if ((int.parse(str6[0]) + int.parse(str6[1]) + int.parse(str6[2])) ==
      (int.parse(str6[3]) + int.parse(str6[4]) + int.parse(str6[5]))) {
    print('Да');
  } else {
    print('Нет');
  }

/*8) Нужно написать условие для действий пешехода при различных сигналах светофора. 
Если сигнал красный, то надо стоять, иначе, если желтый - надо приготовиться, а иначе - можно идти.*/

  print('Enter the traffic signal: ');
  String signal = stdin.readLineSync()!;
  if (signal == 'red') {
    print('Stop, the traffic light is $signal!');
  } else if (signal == 'yellow') {
    print('Get ready, the traffic light is $signal!');
  } else if (signal == 'green') {
    print('You can go, the traffic light is $signal!');
  } else {
    print('The traffic light does not have a $signal signal!');
  }
}
