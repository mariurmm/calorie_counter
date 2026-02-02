import 'package:flutter/material.dart';
import 'meal_card.dart';

class MealGrid extends StatelessWidget {
  final int itemCount;

  const MealGrid({
    super.key,
    this.itemCount = 8, // временно
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.9,
      ),
      itemBuilder: (context, index) {
        return const MealCard(
          imagePath: null,
          calories: 0,
        );
      },
    );
  }
}