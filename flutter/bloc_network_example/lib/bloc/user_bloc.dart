import 'package:bloc_network_example/bloc/user_event.dart';
import 'package:bloc_network_example/bloc/user_state.dart';
import 'package:bloc_network_example/models/user.dart';
import 'package:bloc_network_example/services/user_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserEmptyState()) {
    on<UserLoadEvent>(_onLoadUser);
    on<UserClearEvent>(_onClearUser);
  }
  _onLoadUser(UserLoadEvent event, Emitter<UserState> emit) async {
    emit(
      UserLoadingState(),
    );
    try {
      final List<User> loadUserList = await UsersRepo().getAllUsers();
      emit(UserSuccessState(successUser: loadUserList));
    } catch (_) {
      emit(UserErrorState());
    }
  }

  _onClearUser(UserClearEvent event, Emitter<UserState> emit) {
    emit(UserEmptyState());
  }
}
