part of '../home_page.dart';

class FloatingButtons extends StatelessWidget {
  const FloatingButtons({required this.colorBloc, super.key});

  final ColorBloc colorBloc;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingButtonElement(
          buttonColor: AppColors.colorffe185,
          bloc: colorBloc,
          eventBlocColor: EventYellow(),
        ),
        FloatingButtonElement(
          buttonColor: AppColors.color6ebaff,
          bloc: colorBloc,
          eventBlocColor: EventBlue(),
        ),
        FloatingButtonElement(
          buttonColor: AppColors.colorc90076,
          bloc: colorBloc,
          eventBlocColor: EventRed(),
        ),
        FloatingButtonElement(
          buttonColor: AppColors.color82ef51,
          bloc: colorBloc,
          eventBlocColor: EventGreen(),
        ),
      ],
    );
  }
}
