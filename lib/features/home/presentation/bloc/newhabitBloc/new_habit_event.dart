import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sync_habits/core/enums/Habit_category.dart';
import 'package:sync_habits/core/enums/day_enum.dart';

abstract class NewHabitEvent extends Equatable {
  const NewHabitEvent();

  @override
  List<Object?> get props => [];
}

class HabitNameChanged extends NewHabitEvent {
  final String name;
  const HabitNameChanged(this.name);
  @override
  List<Object?> get props => [name];
}

class CategoryChanged extends NewHabitEvent {
  final HabitCategory category;
  const CategoryChanged(this.category);
  @override
  List<Object?> get props => [category];
}

class RepeatDayToggled extends NewHabitEvent {
  final DayEnum day;
  const RepeatDayToggled(this.day);
  @override
  List<Object?> get props => [day];
}

class ReminderTimeChanged extends NewHabitEvent {
  final TimeOfDay time;
  const ReminderTimeChanged(this.time);
  @override
  List<Object?> get props => [time];
}

class DailyGoalChanged extends NewHabitEvent {
  final int sessions;
  const DailyGoalChanged(this.sessions);
  @override
  List<Object?> get props => [sessions];
}

class SyncPartnersToggled extends NewHabitEvent {
  final bool isEnabled;
  const SyncPartnersToggled(this.isEnabled);
  @override
  List<Object?> get props => [isEnabled];
}

class SaveHabitSubmitted extends NewHabitEvent {
  const SaveHabitSubmitted();
}
