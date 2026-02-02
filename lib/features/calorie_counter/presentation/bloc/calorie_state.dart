import '../../models/meal.dart';

abstract class CalorieState {
  final List<Meal> meals;
  const CalorieState(this.meals);
}

class CalorieInitial extends CalorieState {
  const CalorieInitial() : super(const []);
}

class CalorieLoaded extends CalorieState {
  const CalorieLoaded(List<Meal> meals) : super(meals);
}
