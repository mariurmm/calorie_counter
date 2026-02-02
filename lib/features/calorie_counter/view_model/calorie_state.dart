import '../models/meal.dart';

abstract class CalorieState {
  final List<Meal> meals;
  const CalorieState(this.meals);
}

class CalorieInitial extends CalorieState {
  const CalorieInitial() : super(const []);
}
