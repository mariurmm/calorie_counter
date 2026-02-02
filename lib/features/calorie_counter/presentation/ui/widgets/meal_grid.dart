import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/calorie_bloc.dart';
import '../../bloc/calorie_event.dart';
import '../../bloc/calorie_state.dart';
import 'meal_card.dart';

  
class MealGrid extends StatelessWidget {
  const MealGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalorieBloc, CalorieState>(
      builder: (context, state) {
        return GridView.builder(
          itemCount: state.meals.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            final meal = state.meals[index];

            return MealCard(
              imagePath: meal.image?.url ?? 'assets/placeholder.png',
              calories: meal.calories,
              onTap: () => context.read<CalorieBloc>().add(RemoveMeal(meal)),
            );
          },
        );
      },
    );
  }
}
