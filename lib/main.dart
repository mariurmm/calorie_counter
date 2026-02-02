import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/calorie_counter/presentation/ui/calorie_screen.dart';
import 'features/calorie_counter/presentation/bloc/calorie_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Счётчик калорий',
      home: BlocProvider(
        create: (_) => CalorieBloc(),
        child: const CalorieScreen(),
      ),
    );
  }
}