import 'package:bloc_network_example/feauture/main_screen.dart';
import 'package:bloc_network_example/theme/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: AppColors.color4B493D),
      ),
      home: const HomePage(),
    );
  }
}
