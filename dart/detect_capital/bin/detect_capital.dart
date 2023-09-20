//? Определить страну

// Мы определяем использование заглавных букв в слове как правильное, когда имеет место один из следующих случаев:

// 1) Все буквы в этом слове заглавные, например, "USA".
// 2) Все буквы в этом слове не заглавные, как и "leetcode".
// 3) Только первая буква в этом слове заглавная, как "Google".

// Для заданного строкового слова вернуть true, если в нем используются заглавные буквы.

//? Решение 1
bool isUpperCaseWord(String word) {
  if (word == word.toUpperCase()) {
    // все буквы заглавные
    return true;
  } else if (word == word.toLowerCase()) {
    // все буквы нижнего регистра
    return true;
  } else if (word[0] == word[0].toUpperCase() &&
      word.substring(1) == word.substring(1).toLowerCase()) {
    // только первая буква заглавная
    return true;
  } else {
    // не выполняется ни одно из условий
    return false;
  }
}

//? Решение 2
bool detectCapitalUse(String word) {
  int count = 0;
  for (int i = 0; i < word.length; i++) {
    // Проверяем, является ли текущий символ заглавной буквой
    if (word[i].toUpperCase() == word[i]) {
      count++; // Увеличиваем счетчик заглавных букв
    }
  }
  // Проверяем условия использования заглавных букв:
  // 1. все буквы в слове заглавные
  // 2. все буквы в слове строчные
  // 3. первая буква в слове заглавная, а остальные строчные
  return count == 0 ||
      count == word.length ||
      (count == 1 && word[0].toUpperCase() == word[0]);
}

//? Проверка
void main() {
  print(isUpperCaseWord("USA"));
  print(isUpperCaseWord("leetcode"));
  print(isUpperCaseWord("Google"));
  print(isUpperCaseWord("FlaG"));
}
