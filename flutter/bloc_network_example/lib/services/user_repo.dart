import 'package:bloc_network_example/models/user.dart';
import 'package:bloc_network_example/services/user_api_provider.dart';

class UsersRepo {
  UserProvider usersProvider = UserProvider();
  Future<List<User>> getAllUsers() => usersProvider.getUser();
}
