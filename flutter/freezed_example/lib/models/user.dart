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

_$UserFronJson(Map<String, dynamic> json) {}


/// Для генерации кода в терминале необходимо ввести следующую комманду:
/// flutter pub run build_runner build --delete-conflicting-outputs
/// flutter pub run build_runner watch --delete-conflicting-outputs
