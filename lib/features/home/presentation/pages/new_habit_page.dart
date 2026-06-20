import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sync_habits/core/enums/Habit_category.dart';
import 'package:sync_habits/core/enums/form_status.dart';
import 'package:sync_habits/core/localization/localization_extension.dart';
import 'package:sync_habits/core/service_locator/injection.dart';
import 'package:sync_habits/features/home/presentation/bloc/newhabitBloc/new_habit_bloc.dart';
import 'package:sync_habits/features/home/presentation/bloc/newhabitBloc/new_habit_event.dart';
import 'package:sync_habits/features/home/presentation/bloc/newhabitBloc/new_habit_state.dart';
import 'package:sync_habits/features/home/presentation/pages/NewHabitFormBody.dart';
import 'package:sync_habits/features/home/presentation/widgets/app_button.dart';

import 'package:sync_habits/core/theme/app_sizes.dart';

class NewHabitScreen extends StatelessWidget {
  const NewHabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NewHabitBloc>(),
      child: const NewHabitView(),
    );
  }
}

class NewHabitView extends StatelessWidget {
  const NewHabitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n!.newHabit)),

      body: BlocListener<NewHabitBloc, NewHabitState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) {
          if (state.status == FormStatus.submitting) {
          } else if (state.status == FormStatus.success) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "${state.habitName} added successfully!\n${state.repeatDays.map((x) => x.name).join(', ')} days selected.",
                ),
              ),
            );
            context.pop();
          } else if (state.status == FormStatus.failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errorMessage ?? 'حدث خطأ ما')),
            );
          }
        },
        child: NewHabitFormBody(selectedCategory: HabitCategory.fitness),
      ),
      bottomSheet: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: BlocBuilder<NewHabitBloc, NewHabitState>(
          builder: (context, state) {
            return AppButton(
              label: context.l10n!.saveHabit,
              onPressed: () =>
                  context.read<NewHabitBloc>().add(const SaveHabitSubmitted()),
            );
          },
        ).padAll(AppSizes.paddingLarge),
      ),
    );
  }
}
