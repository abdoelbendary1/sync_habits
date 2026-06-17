import 'package:flutter/material.dart';

class StatsToggleTab extends StatelessWidget {
  final bool isMyStats;
  final ValueChanged<bool> onTabChanged;

  const StatsToggleTab({super.key, required this.isMyStats, required this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: const Color(0xFF161F1A),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => onTabChanged(true),
              child: Container(
                decoration: BoxDecoration(
                  color: isMyStats ? const Color(0xFF00E676) : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'My Stats',
                    style: TextStyle(
                      color: isMyStats ? Colors.black : Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => onTabChanged(false),
              child: Container(
                decoration: BoxDecoration(
                  color: !isMyStats ? const Color(0xFF00E676) : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Partner's Stats",
                    style: TextStyle(
                      color: !isMyStats ? Colors.black : Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}