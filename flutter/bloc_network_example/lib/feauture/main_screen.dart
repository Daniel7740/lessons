import 'package:bloc_network_example/bloc/user_bloc.dart';
import 'package:bloc_network_example/bloc/user_event.dart';
import 'package:bloc_network_example/bloc/user_state.dart';
import 'package:bloc_network_example/theme/colors.dart';
import 'package:bloc_network_example/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part './widgets/app_buton.dart';
part './widgets/action_buttons.dart';
part './widgets/app_bar.dart';
part './widgets/user_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (context) => UserBloc(),
      child: Scaffold(
        backgroundColor: AppColors.colorC9C0BB,
        appBar: const ApplicationAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            ActionButtons(),
            Expanded(
              child: ListOfUsers(),
            ),
          ],
        ),
      ),
    );
  }
}
