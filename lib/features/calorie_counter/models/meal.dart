import 'package:flutter/gestures.dart';

class Meal {
  final int id;
  final String name;
  final double calories;
  // ignore: non_constant_identifier_names
  final String ImagePath;

  Meal({required this.id, required this.name, required this.calories, required this.ImagePath});
}

@override 
// ignore: strict_top_level_inference
String toString(name, calories){
  return ("Meal (name: $name, calories: $calories)");
}

