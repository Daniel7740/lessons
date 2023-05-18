// С пакетом equatable
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String name;
  final int age;

  const User({
    required this.name,
    required this.age,
  });

  /// Без пакета equatable
  /// Переопределение оператора равенства и геттера hashCode
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is User &&
//           runtimeType == other.runtimeType &&
//           name == other.name &&
//           age == other.age;

//   @override
//   int get hashCode => name.hashCode ^ age.hashCode;

  @override
  List<Object?> get props => [name, age];

  /// Исправление иммутабельности для создания нового экземпляра класса от уже существующего при помощи реализации метода CopyWith
  User copyWith({
    String? name,
    int? age,
  }) {
    return User(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}
