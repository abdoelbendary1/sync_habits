import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: const TextSpan(
            style: TextStyle(fontSize: 22, color: Colors.white),
            children: [
              TextSpan(
                text: 'SyncHabit',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        IconButton(
          icon: const CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white10,
            child: Icon(Icons.person, color: Colors.white, size: 20),
          ),
          onPressed: () {
            // Navigate to Profile
          },
        ),
      ],
    );
  }
}
