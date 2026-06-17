import 'package:flutter/material.dart';

enum HabitCategory {
  fitness('Fitness', Icons.fitness_center, 1),
  mindset('Mindset', Icons.psychology, 2),
  work('Work', Icons.work, 3),
  nutrition('Nutrition', Icons.local_fire_department, 4);

  final String name;
  final IconData icon;
  final int id;
  const HabitCategory(this.name, this.icon, this.id);
}
