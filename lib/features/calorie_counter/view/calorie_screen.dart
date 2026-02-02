import 'package:flutter/material.dart';
import 'widgets/meal_grid.dart';

class CalorieScreen extends StatelessWidget {
  const CalorieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Счётчик калорий"),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: MealGrid(),
        ),
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        color: Colors.grey.shade100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Текст с калориями
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Общее количество калорий:",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "0", // !!! заменить на BlocBuilder !!!
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),

            // Кнопка "Добавить"
            ElevatedButton.icon(
              onPressed: () {
                // !!! логика !!!
              },
              icon: const Icon(Icons.add),
              label: const Text("Добавить"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}