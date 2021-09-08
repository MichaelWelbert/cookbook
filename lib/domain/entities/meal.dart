import 'package:equatable/equatable.dart';

class Meal extends Equatable {
  final String id;
  final List<String> categoriesId;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int durationInMinutes;

  Meal({
    required this.id,
    required this.categoriesId,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.durationInMinutes,
  });

  @override
  List<Object?> get props => [id];
}
