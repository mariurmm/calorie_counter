import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/meal.dart';
import 'calorie_event.dart';
import 'calorie_state.dart';

class CalorieBloc extends Bloc<CalorieEvent, CalorieState> {
  CalorieBloc() : super(const CalorieInitial()) {
    on<AddMeal>((event, emit) {
      final updatedMeals = List<Meal>.from(state.meals)..add(event.meal);
      emit(CalorieLoaded(updatedMeals));
    });

    on<RemoveMeal>((event, emit) {
      final updatedMeals =
          state.meals.where((m) => m != event.meal).toList();
      emit(CalorieLoaded(updatedMeals));
    });
  }
}
