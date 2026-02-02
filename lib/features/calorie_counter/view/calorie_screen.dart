import 'package:flutter/material.dart';
import 'widgets/meal_grid.dart';

class CalorieScreen extends StatelessWidget {
  const CalorieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Счётчик калорий"), centerTitle: true),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Заголовок общей суммы калорий
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Общее количество калорий: 0",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          // GridView с блюдами
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const MealGrid(),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Пока пусто — логика будет подключена позже
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
