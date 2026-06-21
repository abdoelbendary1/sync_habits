import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sync_habits/features/home/presentation/bloc/PartnershipSyncBloc/partnership_sync_bloc.dart';
import 'package:sync_habits/features/home/presentation/widgets/partnership_status_card.dart';

class PartnershipStatusSection extends StatelessWidget {
  const PartnershipStatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PartnershipSyncBloc, PartnershipSyncState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => SizedBox(
            height: 150.r,
            child: const Center(child: CircularProgressIndicator()),
          ),
          success: (myProgress, partnerProgress, partnerName) =>
              PartnershipStatusCard(
                myProgress: myProgress,
                partnerProgress: partnerProgress,
                partnerName: partnerName,
              ),
          failure: (errorMessage) => Text(
            'Error: $errorMessage',
            style: const TextStyle(color: Colors.red),
          ),
        );
      },
    );
  }
}
