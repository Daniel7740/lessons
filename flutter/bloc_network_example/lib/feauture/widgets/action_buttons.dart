part of '../main_screen.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final UserBloc bloc = BlocProvider.of<UserBloc>(context);
    return Material(
      elevation: 4,
      color: AppColors.color4B493D,
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(
              nameOfButton: 'Загрузить',
              onButtonTap: () {
                bloc.add(UserLoadEvent());
              },
            ),
            const SizedBox(
              width: 20,
            ),
            AppButton(
              nameOfButton: 'Очистить',
              onButtonTap: () {
                bloc.add(UserClearEvent());
              },
            ),
          ],
        ),
      ),
    );
  }
}
