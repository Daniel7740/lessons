part of '../home_page.dart';

class FloatingButtonElement extends StatelessWidget {
  const FloatingButtonElement({
    Key? key,
    required this.buttonColor,
    required this.bloc,
    required this.eventBlocColor,
  }) : super(key: key);

  final Color buttonColor;
  final ColorBloc bloc;
  final ColorEvent eventBlocColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 15),
      child: FloatingActionButton(
        onPressed: () {
          bloc.add(eventBlocColor);
        },
        backgroundColor: buttonColor,
      ),
    );
  }
}
