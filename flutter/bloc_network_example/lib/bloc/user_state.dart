abstract class UserState {}

class UserEmptyState extends UserState {}

class UserLoadingState extends UserState {}

class UserSuccessState extends UserState {
  List successUser;
  UserSuccessState({required this.successUser});
}

class UserErrorState extends UserState {}
