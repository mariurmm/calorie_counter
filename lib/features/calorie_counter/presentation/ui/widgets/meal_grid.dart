import 'package:calorie_counter/features/calorie_counter/presentation/bloc/calorie_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'meal_card.dart';

class MealGrid extends StatelessWidget {
  const MealGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalorieBloc, CalorieState>(
      builder: (c, s) {
        if (s.meals.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.fastfood),
                SizedBox(height: 16),
                Text('Нет блюд'),
              ],
            ),
          );
        }
        return GridView.builder(
          itemCount: s.meals.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (c, i) => MealCard(
            imagePath: s.meals[i].imagePath,
            calories: s.meals[i].calories,
            onDelete: () => context.read<CalorieBloc>().add(RemoveMealEvent(i)),
          ),
        );
      },
    );
  }
}
