import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/data/models/plank_info.dart';
import 'package:plank_me/presentation/plank_records/cubit/plankrecord_cubit.dart';
import 'package:plank_me/presentation/plank_records/ui/widgets/widgets.dart';
import 'package:plank_me/presentation/ui_utils/ui_styles.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12.0),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: _HeaderSection(),
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: _InfoSection(),
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            color: AppColors.darkSurface,
          ),
        ),
      ],
    );
  }
}

class _InfoSection extends StatelessWidget {
  const _InfoSection({
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

class _HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlankrecordCubit, PlankrecordState>(
      builder: (context, state) {
        return state.maybeWhen(
          complete: (totalMinutes, personalBest, __, _) => Row(
            children: [
              Expanded(
                child: CardItem(
                  label: 'My Best',
                  textValue: Text(
                    personalBest,
                    style: context.text.headline4!.withColor(AppColors.accent),
                  ),
                ),
              ),
              const SizedBox(width: 12.0),
              Expanded(
                child: CardItem(
                  label: 'Total planked min',
                  textValue: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: totalMinutes,
                        style:
                            context.text.headline5!.withColor(AppColors.accent),
                      ),
                      TextSpan(
                        text: 'mins',
                        style:
                            context.text.caption!.withColor(AppColors.accent),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
          orElse: () => Container(),
        );
      },
    );
  }
}
