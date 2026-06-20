import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sync_habits/features/accountability/presentation/pages/select_partner_page.dart';
import 'package:sync_habits/features/home/presentation/pages/home_screen.dart';
import 'package:sync_habits/features/home/presentation/pages/new_habit_page.dart';
import 'package:sync_habits/features/profile/presentation/pages/ProfilePage.dart';

class BottomNavBarScaffold extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const BottomNavBarScaffold({super.key, required this.navigationShell});

  @override
  State<BottomNavBarScaffold> createState() => _BottomNavBarScaffoldState();
}

class _BottomNavBarScaffoldState extends State<BottomNavBarScaffold> {
  bool isGymCompleted = true;
  bool isHydrationCompleted = false;
  bool isDeepWorkCompleted = false;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      const HomeScreen(),
      const SelectPartnerPage(),
      const ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0F0C),
      body: widget.navigationShell,

      floatingActionButton: widget.navigationShell.currentIndex == 0
          ? FloatingActionButton(
              foregroundColor: Colors.black,
              backgroundColor: const Color(0xFF00E676),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewHabitScreen(),
                  ),
                );
              },
              child: const Icon(Icons.add),
            )
          : null,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFF0A0F0C),
          selectedItemColor: const Color(0xFF00E676),
          unselectedItemColor: Colors.grey,
          currentIndex: widget.navigationShell.currentIndex,
          onTap: (index) {
            // التنقل بين الـ Tabs بشكل سليم ومحفوظ الـ State
            widget.navigationShell.goBranch(
              index,
              initialLocation: index == widget.navigationShell.currentIndex,
            );
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Partners',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          // items: [
          //   BottomNavigationBarItem(
          //     icon: Container(
          //       padding: const EdgeInsets.symmetric(
          //         horizontal: 16,
          //         vertical: 4,
          //       ),
          //       decoration: BoxDecoration(
          //         color: widget.navigationShell.currentIndex == 0
          //             ? const Color(0xFF161F1A)
          //             : Colors.transparent,
          //         borderRadius: BorderRadius.circular(20),
          //       ),
          //       child: const Icon(Icons.home_outlined),
          //     ),
          //     label: 'Home',
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Container(
          //       padding: const EdgeInsets.symmetric(
          //         horizontal: 16,
          //         vertical: 4,
          //       ),
          //       decoration: BoxDecoration(
          //         color: widget.navigationShell.currentIndex == 1
          //             ? const Color(0xFF161F1A)
          //             : Colors.transparent,
          //         borderRadius: BorderRadius.circular(20),
          //       ),
          //       child: const Icon(Icons.bar_chart),
          //     ),
          //     label: 'Analytics',
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Container(
          //       padding: const EdgeInsets.symmetric(
          //         horizontal: 16,
          //         vertical: 4,
          //       ),
          //       decoration: BoxDecoration(
          //         color: widget.navigationShell.currentIndex == 2
          //             ? const Color(0xFF161F1A)
          //             : Colors.transparent,
          //         borderRadius: BorderRadius.circular(20),
          //       ),
          //       child: const Icon(Icons.person_outline),
          //     ),
          //     label: 'Partners',
          //   ),
          // ],
        ),
      ),
    );
  }
}
