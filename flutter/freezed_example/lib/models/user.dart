import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String name,
    @Default(18) int? age,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFronJson(json);
}

// class User {
//   final String name;
//   final int age;

//   User({
//     required this.name,
//     required this.age,
//   });
// }

/// Для генерации кода в терминале необходимо ввести следующую комманду:
/// flutter pub run build_runner build --delete-conflicting-outputs
/// flutter pub run build_runner watch --delete-conflicting-outputs
