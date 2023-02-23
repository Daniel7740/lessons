void main(List<String> args) {
  List<int> a = [4, 5, 7, 9, 54, 165];

  Set<String> b = {'I', 'like', 'study', 'flutter'};

  Map<int, String> c = {1: 'I', 2: 'love', 3: 'Flutter'};

  print(a.length); // .length - выводит длинну массива;
  print(a.reversed); // .reversed - выводит список в обратном порядке;
  print(
      '${a.isEmpty} ${a.isNotEmpty}'); // .isEmpty .isNotEmpty - проверяет список на пустоту и выводит true или false;
  a.add(12); // .add - добавляет значение в список;
  print(a);
  print(c[
      3]); // c[3] - выводит из Map значение с индексом 3 (Индекс начинается с нуля);
  print(
      '${a.first} ${a.last}'); // .first и .last выводят первый или последний элемент списка;
  print(
      '${a.contains(5)}'); // .contains - проверяет содержится ли в списке указанное значение;
  a.addAll(a); // .addAll - объединяет списки
  print(a);
}
