part of '../change_color_screen.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton(
      {required this.elementColor,
      required this.eventBlocColor,
      required this.bloc,
      super.key});

  final Color elementColor;
  final ColorBloc bloc;
  final ColorEvent eventBlocColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: FloatingActionButton(
        onPressed: () {
          bloc.inputEventSink.add(eventBlocColor);
        },
        backgroundColor: elementColor,
      ),
    );
  }
}
