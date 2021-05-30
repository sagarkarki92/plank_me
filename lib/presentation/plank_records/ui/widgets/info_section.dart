import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/plank_records/cubit/plankrecord_cubit.dart';
import 'package:plank_me/presentation/ui_utils/ui_styles.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlankrecordCubit, PlankrecordState>(
      builder: (context, state) {
        return state.maybeWhen(
            complete: (___, __, plankMessage, _) => Material(
                  animationDuration: const Duration(seconds: 1),
                  borderRadius: BorderRadius.circular(12.0),
                  color: AppColors.light,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      plankMessage,
                      style: context.text.subtitle2!.withColor(AppColors.dark),
                    ),
                  ),
                ),
            orElse: () => const SizedBox());
      },
    );
  }
}
