import 'package:flutter/material.dart';
import 'package:sync_habits/core/enums/Habit_category.dart';

class CategorySelector extends StatelessWidget {
  final HabitCategory selectedCategory;
  final Function(HabitCategory) onSelect;

  const CategorySelector({
    super.key,
    required this.selectedCategory,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: HabitCategory.values.map((cat) {
        bool isSelected = selectedCategory == cat;
        return GestureDetector(
          onTap: () => onSelect(cat),

          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 80,
            height: 90,
            decoration: BoxDecoration(
              color: const Color(0xFF161F1A),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isSelected ? const Color(0xFF00E676) : Colors.white10,
                width: 2,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  cat.icon,
                  color: isSelected ? const Color(0xFF00E676) : Colors.white70,
                ),
                const SizedBox(height: 8),
                Text(
                  cat.name,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
