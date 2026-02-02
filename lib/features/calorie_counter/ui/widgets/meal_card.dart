import 'dart:io';

import 'package:flutter/material.dart';

class MealCard extends StatelessWidget {
  final String? imagePath; // пока может быть null
  final int calories; // пока заглушка

  const MealCard({super.key, this.imagePath, this.calories = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Фото блюда
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: imagePath == null
                  ? Image(
                      image: AssetImage("assets/placeholder.png"),
                      fit: BoxFit.cover,
                    )
                  : Image.file(File(imagePath!), fit: BoxFit.cover),
            ),
          ),

          // Калории
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$calories калорий",
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
