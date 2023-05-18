import 'package:freezed_example/models/user_model_ext.dart';

void main() {
  User userA = User(name: 'User1', age: 25);
  User userB = User(name: 'User1', age: 25);

  print(userA.hashCode);
  print(userB.hashCode);

  print(userA == userB);

  print('User A: $userA');

  final userCopyA = userA.copyWith(
    name: 'User A',
    age: null, // Не принимает значение null
  );

  print('User A Copy: $userCopyA');

  final json = userA.toJson();
  print('User A toJson: $json');
  print('User A fronJson: ${User.fromJson(json)}');
}
