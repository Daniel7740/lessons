import 'package:flutter/material.dart';

part 'widgets/element.dart';
part 'widgets/pyramid.dart';
part 'widgets/app_bar.dart';

class Cubes extends StatelessWidget {
  const Cubes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade100,
      appBar: const CubesAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Pyramid(location: MainAxisAlignment.start),
            Pyramid(location: MainAxisAlignment.center),
            Pyramid(location: MainAxisAlignment.end),
          ],
        ),
      ),
    );
  }
}
