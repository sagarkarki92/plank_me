import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/plank_records/cubit/plankrecord_cubit.dart';
import 'package:plank_me/presentation/plank_records/ui/widgets/widgets.dart';
import 'package:plank_me/presentation/ui_utils/ui_styles.dart';

class HeaderSection extends StatelessWidget {
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
