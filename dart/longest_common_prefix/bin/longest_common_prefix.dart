// Функция находит наибольший общий префикс (совпадающую начальную часть) списка строк.

void main(List<String> args) {
  // объявление функции longestCommonPrefix, которая принимает
  // список строк strs и возвращает строку
  String longestCommonPrefix(List<String> strs) {
    // проверка на пустой список. Если список пустой,
    // то функция возвращает сообщение об ошибке
    if (strs.isEmpty) {
      return 'Error: Array is empty!';
    }

    // инициализация переменной prefix первым элементом списка strs
    final prefix = strs[0];

    // цикл по длине строки prefix
    for (int i = 0; i < prefix.length; i++) {
      // цикл по строкам списка strs, начиная со второй строки
      // используется метод skip(1) для пропуска первой строки
      for (String j in strs.skip(1)) {
        print(j);

        // проверка на совпадение символов в текущем индексе i
        // строки prefix и строки j.
        // если они не совпадают или мы вышли за границы строки j,
        // то функция возвращает подстроку prefix от 0 до i.
        if (i >= j.length || prefix[i] != j[i]) {
          return prefix.substring(0, i);
        }
      }
    }

    // возвращаем полную строку prefix, если все элементы списка strs совпадают с prefix
    return prefix;
  }

  // вызов функции longestCommonPrefix и передача в нее списка строк
  // ["flower", "flow", "flight"]
  print(
    longestCommonPrefix(
      ["flower", "flow", "flight"],
    ),
  );
}

// skip -- Метод skip позволяет получить новую коллекцию (составной объект), состоящую из элементов исходной, за исключением первых n элементов.

// substring -- возвращает подстроку начиная с позиции startIndex до позиции endIndex , не включая ее
