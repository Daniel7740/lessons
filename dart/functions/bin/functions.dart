//1) Сделайте функцию, которая возвращает квадрат числа. Число передается параметром.
/*
void main() {
  print('Введите число для возведения в квадрат: ');
  double first = double.parse(stdin.readLineSync()!);
  square(first);
}

void square(double first) {
  double ans = first * first;
  print('$first^2 = $ans');
}
*/

//2) Сделайте функцию, которая возвращает сумму двух чисел.
/*
void main() {
  print('Введите первое число: ');
  double first = double.parse(stdin.readLineSync()!);
  print('Введите второе число: ');
  double second = double.parse(stdin.readLineSync()!);
  sum(first, second);
}

void sum(double first, double second) {
  double ans = first + second;
  print('$first + $second = $ans');
}
*/

//3) Сделайте функцию, которая отнимает от первого числа второе и делит на третье.
/*
void main() {
  print('Введите первое число: ');
  double first = double.parse(stdin.readLineSync()!);
  print('Минус второе число: ');
  double second = double.parse(stdin.readLineSync()!);
  print('Делить на третье число: ');
  double third = double.parse(stdin.readLineSync()!);
  summ(first, second, third);
}

void summ(double first, double second, double third) {
  double ans = first - second / third;
  print('$first - $second / $third = $ans');
}
*/

//4) Напишите функцию, которая принимает целые минуты и преобразует их в секунды.
/*
void main() {
  print('Введите кол-во минут: ');
  int min = int.parse(stdin.readLineSync()!);
  sec(min);
}

void sec(int min) {
  int ans = min * 60;
  print('$min мин. = $ans секунд');
}
*/

//5) Есть массив, List array = [1, 3, 4, 5, 6]; возвратите его первый элемент
/*
void main() {
  List array = [1, 3, 4, 5, 6];
  arr(array);
}

void arr(List array) {
  int ans = array.first;
  print('Первый эллемент в массиве $array = $ans');
}
*/

//!!!???
//6) Создайте bool переменную и напишите условие (if…else), выведите сообщение «Переменная имеет значение (значение вашей переменной)
/*
void main() {
  print('Введите число: ');
  int task6 = int.parse(stdin.readLineSync()!);
  par(task6);
}

void par(int task6) {
  bool boolean = false;
  if (task6 != 0) {
    print('Переменная имеет значение: $task6');
  } else {
    boolean = false;
  }
}
*/

//7) Создайте функцию, которая принимает число в качестве единственного аргумента и возвращает true, если оно меньше или равно нулю, в противном случае возвращает false.
/*
void main() {
  print('Введите число: ');
  int num = int.parse(stdin.readLineSync()!);
  comparison(num);
}

void comparison(int num) {
  if (num <= 0) {
    print(true);
  } else {
    print(false);
  }
}
*/

//8) Дан массив с числами. Проверьте, есть ли в нем два одинаковых числа подряд. Если есть - выведите 'да', а если нет - выведите 'нет'.
/*
void main() {
  List array = [16, 10, 10, 46, 50, 20, 15, 25, 12, 12, 43, 15, 35, 19, 19];
  comparison(array);
}

void comparison(List array) {
  for (int i = 0; i <= array.length; i++) {
    for (int j = i + 1; j < array.length; j++) {
      if (array[i++] == array[i]) {
        print('Да ${array[i]}');
      } else {
        print('Нет');
      }
    }
  }
}
*/