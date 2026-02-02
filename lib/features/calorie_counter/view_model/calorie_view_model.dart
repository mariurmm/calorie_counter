import 'package:flutter/material.dart';
import '../../../../flutter/packages/flutter/lib/foundation.dart';
import 'lib/features/calorie_counter/models/meal.dart';

class CalorieViewModel extends ChangeNotifier {
  final List<Meal> _selectedMeals;

  void addMeal(Meal meal) {
    _selectedMeals.add(meal);
    notifyListeners();
  }

  void removeMeal(Meal meal) {
    _selectedMeals.remove(meal);
    notifyListeners();
  }

  int get totalCalories =>
  _selectedMeals.fold(0, (sum, meal) => sum + meal.calories);
} 