import 'package:calorie_counter/features/calorie_counter/models/meal.dart';

abstract class CalorieEvent {}

class AddMeal extends CalorieEvent {
  final Meal meal;

  AddMeal(this.meal);
}

class RemoveMeal extends CalorieEvent {
  final Meal meal;

  RemoveMeal(this.meal);
}