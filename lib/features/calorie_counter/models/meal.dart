class Meal {
  final int id;
  final String name;
  final int calories;
  final String imagePath;

  Meal({
    required this.id,
    required this.name,
    required this.calories,
    required this.imagePath,
  });

  @override
  String toString() {
    return 'Meal(id: $id, name: $name, calories: $calories)';
  }
}
