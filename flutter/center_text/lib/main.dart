import 'package:center_text/feature/main_screen/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Center Text App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TextApp(),
    );
  }
}
