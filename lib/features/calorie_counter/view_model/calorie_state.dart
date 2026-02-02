import 'package:calorie_counter/features/calorie_counter/models/meal.dart';

class CalorieState {
  final List<Meal> meals;

  CalorieState({required this.meals});

  factory CalorieState.initial() {
    return CalorieState(meals: []);
  }
}