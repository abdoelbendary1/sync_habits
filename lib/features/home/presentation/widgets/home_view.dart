import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sync_habits/core/enums/Habit_category.dart';
import 'package:sync_habits/core/service_locator/injection.dart';
import 'package:sync_habits/features/home/presentation/bloc/PartnershipSyncBloc/partnership_sync_bloc.dart';
import 'package:sync_habits/features/home/presentation/bloc/habits/habits_bloc.dart';
import 'package:sync_habits/features/home/presentation/bloc/partnerActivity/partner_activity_bloc.dart';
import 'package:sync_habits/features/home/presentation/widgets/home_screen_sections/habit_item_card.dart';
import 'package:sync_habits/features/home/presentation/widgets/home_screen_sections/home_header.dart';
import 'package:sync_habits/features/home/presentation/widgets/home_screen_sections/my_habits_section.dart';
import 'package:sync_habits/features/home/presentation/widgets/home_screen_sections/partner_activity_card.dart';
import 'package:sync_habits/features/home/presentation/widgets/home_screen_sections/partner_activity_section.dart';
import 'package:sync_habits/features/home/presentation/widgets/home_screen_sections/partnership_status_section.dart';
import 'package:sync_habits/features/home/presentation/widgets/partnership_status_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeHeader(),
          const SizedBox(height: 20),
          const PartnershipStatusSection(),
          const SizedBox(height: 24),
          const MyHabitsSection(),
          const SizedBox(height: 24),
          const PartnerActivitySection(),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
