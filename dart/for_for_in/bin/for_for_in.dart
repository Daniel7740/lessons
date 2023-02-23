//Home Work 7 (For, For in)

// 1 - Дан массив с числами. Проверьте, есть ли в нем два одинаковых числа не подряд. Если есть - выведите 'да', а если нет - выведите 'нет'.
void main() {
  List<int> task1 = [1, 2, 4, 3, 0, 5, 9, 5];
  List<int> result1 = [];
  for (var i = 0; i < task1.length; i++) {
    for (var j = i + 1; j < task1.length; j++) {
      if (task1[j] == task1[i]) {
        result1 = [task1[i]];
      }
    }
  }
  if (result1.isNotEmpty) {
    print('Да');
  } else {
    print('Нет');
  }
}

// 2 - Дан массив с числами - List<int> list = [1, 2, 3, 4, 0, 5, 5, 7]; Напишите функцию и передайте ей массив в качестве параметра. Функция должна вернуть вам среднее арифметическое данного массива, вы должны получить - 3.375.
// void main() {
//   List<int> list = [1, 2, 3, 4, 0, 5, 5, 7];
//   average(list);
// }

// void average(List<int> list) {
//   int variable = 0;
//   int amount = list.length;
//   for (var a in list) {
//     variable += a;
//   }
//   print('Среднее арифметическое массива $list = ${variable / amount}');
// }

// 3 - Дан массив с числами - List<int> list = [1, 5, 3, 2, 2, 5, 6, 1, 2, 3];. Напишите функцию, которая вернет вам длинну этого массива - вы должны получить 10. Использовать lenght ЗАПРЕЩАЕТСЯ.
// void main() {
//   List<int> list = [1, 5, 3, 2, 2, 5, 6, 1, 2, 3];
//   len(list);
// }

// void len(List<int> list) {
//   int ln = 0;
//   for (var length in list) {
//     ln++;
//   }
//   print(ln);
// }

// 4 - Дан массив со значениями - List<dynamic> list = [1, '2', true, 1, 4, false, 'qwerty'];. Напишите функцию, которая будет определять тип данных каждого элемента и закидывать значение в другой массив. Вы должны получить - [int, String, bool, int, int, bool, String].
// void main() {
//   List<dynamic> list = [1, '2', true, 1, 4, false, 'qwerty'];
//   data_types(list);
// }

// void data_types(List<dynamic> list) {
//   List data_type = [];
//   for (var element in list) {
//     data_type.add(element.runtimeType);
//   }
//   print(data_type);
// }
