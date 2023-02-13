part of '../cubes_screen.dart';

class Pyramid extends StatelessWidget {
  const Pyramid({
    super.key,
    required this.location,
  });

  final MainAxisAlignment location;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: location,
      children: const [
        Element(
          number: '1',
          elementColor: Colors.red,
          size: 70,
        ),
        Element(
          number: '2',
          elementColor: Colors.orange,
          size: 90,
        ),
        Element(
          number: '3',
          elementColor: Colors.green,
          size: 110,
        ),
      ],
    );
  }
}
