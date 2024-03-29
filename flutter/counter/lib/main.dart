import 'package:counter/feature/counter_screen/bloc/couner_bloc.dart';
import 'package:counter/feature/counter_screen/counter_screen.dart';
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
      title: 'Counter',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'CormorantInfant',
      ),
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: const Counter(),
      ),
    );
  }
}
