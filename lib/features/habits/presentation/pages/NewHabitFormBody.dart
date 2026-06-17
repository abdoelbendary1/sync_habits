import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sync_habits/core/enums/Habit_category.dart';
import 'package:sync_habits/core/localization/localization_extension.dart';
import 'package:sync_habits/core/theme/app_theme.dart';
import 'package:sync_habits/features/habits/presentation/bloc/bloc/new_habit_bloc.dart';
import 'package:sync_habits/features/habits/presentation/bloc/bloc/new_habit_event.dart';
import 'package:sync_habits/features/habits/presentation/bloc/bloc/new_habit_state.dart';
import 'package:sync_habits/features/habits/presentation/widgets/app_mini_card.dart';
import 'package:sync_habits/features/habits/presentation/widgets/app_switch_card.dart';
import '../widgets/category_selector.dart';
import '../widgets/day_selector.dart';

import 'package:sync_habits/core/theme/app_sizes.dart'; // ثوابت الأبعاد والـ num extension

class NewHabitFormBody extends StatelessWidget {
  // final TextEditingController? habitNameController = TextEditingController();
  final HabitCategory selectedCategory;
  NewHabitFormBody({super.key, required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child:
          BlocBuilder<NewHabitBloc, NewHabitState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(context.l10n!.habitName, style: textTheme.labelSmall),
                  8.verticalSpace,
                  BlocBuilder<NewHabitBloc, NewHabitState>(
                    buildWhen: (previous, current) =>
                        previous.habitName != current.habitName,
                    builder: (context, state) {
                      return TextField(
                        cursorColor: context.colors.neonGreen,
                        // controller: habitNameController,
                        onChanged: (val) => context.read<NewHabitBloc>().add(
                          HabitNameChanged(val),
                        ),
                        decoration: InputDecoration(
                          hintStyle: textTheme.bodyLarge?.copyWith(
                            color: context.colors.textMuted,
                          ),
                          hintText: context.l10n?.habitNameHint,
                        ),
                      );
                    },
                  ),
                  30.verticalSpace,

                  Text('CATEGORY', style: textTheme.labelSmall),
                  15.verticalSpace,
                  BlocBuilder<NewHabitBloc, NewHabitState>(
                    buildWhen: (previous, current) =>
                        previous.selectedCategory != current.selectedCategory,
                    builder: (context, state) {
                      return CategorySelector(
                        selectedCategory: state.selectedCategory,
                        onSelect: (val) => context.read<NewHabitBloc>().add(
                          CategoryChanged(val),
                        ),
                      );
                    },
                  ),

                  30.verticalSpace,

                  Text('REPEAT DAILY', style: textTheme.labelSmall),
                  15.verticalSpace,
                  BlocBuilder<NewHabitBloc, NewHabitState>(
                    buildWhen: (previous, current) =>
                        previous.repeatDays != current.repeatDays,
                    builder: (context, state) {
                      return DaySelector(
                        selectedDays: state.repeatDays,
                        onToggle: (day) => context.read<NewHabitBloc>().add(
                          RepeatDayToggled(day),
                        ),
                      );
                    },
                  ),
                  30.verticalSpace,

                  Row(
                    children: [
                      Expanded(
                        child: AppMiniCard(
                          label: 'REMINDER',
                          value: '08:00 AM',
                          icon: Icons.notifications_none_outlined,
                        ),
                      ),
                      15.horizontalSpace, // Spacer أفقي ذكي
                      Expanded(
                        child: AppMiniCard(
                          label: 'DAILY GOAL',
                          value: '1 session',
                          icon: Icons.flag_outlined,
                        ),
                      ),
                    ],
                  ),
                  30.verticalSpace,

                  BlocBuilder<NewHabitBloc, NewHabitState>(
                    buildWhen: (previous, current) =>
                        previous.syncWithPartners != current.syncWithPartners,
                    builder: (context, state) {
                      return AppSwitchCard(
                        title: 'Sync with partners',
                        icon: Icons.people_outline,
                        isEnabledSwitchOn: state.syncWithPartners,
                        onToggle: (val) => context.read<NewHabitBloc>().add(
                          SyncPartnersToggled(val),
                        ),
                      );
                    },
                  ),

                  20.verticalSpace,
                ],
              );
            },
          ).padAll(
            AppSizes.paddingDefault,
          ), // لف الـ Column بالكامل بالـ padding الموحد للتطبيق
    );
  }
}
