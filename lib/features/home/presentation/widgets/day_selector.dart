import 'package:flutter/material.dart';
import 'package:sync_habits/core/enums/day_enum.dart';

class DaySelector extends StatelessWidget {
  final List<DayEnum> selectedDays;
  final Function(DayEnum) onToggle;

  const DaySelector({
    super.key,
    required this.selectedDays,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final days = DayEnum.values;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: days.map((day) {
        bool isSelected = selectedDays.contains(day);
        return GestureDetector(
          onTap: () => onToggle(day),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFF00E676) : Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? Colors.transparent : Colors.white24,
              ),
            ),
            child: Center(
              child: Text(
                day.shortName,
                style: TextStyle(
                  color: isSelected ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
