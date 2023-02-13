part of '../cubes.dart';

class Element extends StatelessWidget {
  const Element({
    Key? key,
    required this.number,
    required this.elementColor,
    required this.size,
  }) : super(key: key);

  final String number;
  final MaterialColor elementColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      color: elementColor,
      child: Center(
        child: Text(
          number,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
