import 'package:bloc_flutter_extension_example/presentation/bloc/color_bloc.dart';
import 'package:bloc_flutter_extension_example/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => ColorBloc(),
        child: const HomePage(),
      ),
    );
  }
}
