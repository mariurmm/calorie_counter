import 'dart:async';
import 'dart:math';
import 'package:calorie_counter/features/calorie_counter/models/meal.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CalorieEvent {

}

class AddMealEvent extends CalorieEvent {
  final String? path; 
  AddMealEvent(this.path); 
}

class RemoveMealEvent extends CalorieEvent {
   final int index; 
   RemoveMealEvent(this.index); 
   }

abstract class CalorieState {
  final List<Meal> meals; 
  const CalorieState(this.meals); 
}

class CalorieInitialState extends CalorieState {
  CalorieInitialState() : super([]); 
}

class CalorieLoadedState extends CalorieState {
  CalorieLoadedState(super.meals); 
}

class CalorieBloc extends Bloc<CalorieEvent, CalorieState> {
  final Random _r = Random();
  CalorieBloc() : super(CalorieInitialState()) {
    on<AddMealEvent>(_add);
    on<RemoveMealEvent>(_remove);
  }

  FutureOr<void> _add(AddMealEvent e, Emitter<CalorieState> emit) {
    final meal = Meal(imagePath: e.path, calories: 100 + _r.nextInt(401));
    final meals = List<Meal>.from(state.meals)..add(meal);
    emit(CalorieLoadedState(meals));
  }

  FutureOr<void> _remove(RemoveMealEvent e, Emitter<CalorieState> emit) {
    final meals = List<Meal>.from(state.meals)..removeAt(e.index);
    emit(CalorieLoadedState(meals));
  }
}