import 'package:flutter/gestures.dart';

class Meal {
  final int id;
  final String name;
  final double calories;
  final String ImagePath;

  Meal({required this.id, required this.name, required this.calories, required this.ImagePath});
}

@override 
String toString(name, calories){
  return ("Meal (name: $name, calories: $calories)"),
}

