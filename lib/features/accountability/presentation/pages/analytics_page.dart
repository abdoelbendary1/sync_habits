import 'package:flutter/material.dart';
import 'package:sync_habits/features/accountability/presentation/widgets/my_stats_view.dart';
import 'package:sync_habits/features/accountability/presentation/widgets/partner_stats_view.dart';
import '../widgets/stats_toggle_tab.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  bool isMyStatsSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0F0C),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Synchabit',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: [
          const CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white10,
            child: Icon(Icons.person, size: 18, color: Colors.white),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            StatsToggleTab(
              isMyStats: isMyStatsSelected,
              onTabChanged: (val) => setState(() => isMyStatsSelected = val),
            ),
            const SizedBox(height: 24),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              child: isMyStatsSelected
                  ? const MyStatsView()
                  : const PartnerStatsView(),
            ),
          ],
        ),
      ),
    );
  }
}
