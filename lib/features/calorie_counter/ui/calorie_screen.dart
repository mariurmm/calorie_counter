import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/meal.dart';
import '../view_model/calorie_bloc.dart';
import '../view_model/calorie_event.dart';
import '../view_model/calorie_state.dart';
import 'widgets/meal_grid.dart';

class CalorieScreen extends StatelessWidget {
  const CalorieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalorieBloc(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Счётчик калорий"), centerTitle: true),

        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: MealGrid(),
          ),
        ),

        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          color: Colors.grey.shade100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Общее количество калорий:",
                    style: TextStyle(fontSize: 14),
                  ),

                  BlocBuilder<CalorieBloc, CalorieState>(
                    builder: (context, state) {
                      final totalCalories = state.meals.fold(
                        0,
                        (sum, meal) => sum + meal.calories,
                      );

                      return Text(
                        "$totalCalories",
                        style: Theme.of(context).textTheme.titleLarge,
                      );
                    },
                  ),
                ],
              ),

              ElevatedButton.icon(
                onPressed: () {
                  context.read<CalorieBloc>().add(
                    AddMeal(
                      Meal(
                        id: DateTime.now().millisecondsSinceEpoch,
                        name: 'Meal',
                        calories: 100,
                        imagePath: 'assets/placeholder.png',
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text("Добавить"),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
