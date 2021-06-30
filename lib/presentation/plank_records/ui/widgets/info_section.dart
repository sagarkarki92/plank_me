import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plank_me/presentation/plank_records/cubit/plankrecord_cubit.dart';
import 'package:plank_me/presentation/ui_utils/ui_styles.dart';

class InfoSection extends StatefulWidget {
  const InfoSection({
    Key? key,
  }) : super(key: key);

  @override
  _InfoSectionState createState() => _InfoSectionState();
}

class _InfoSectionState extends State<InfoSection>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOutBack,
    );
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlankrecordCubit, PlankrecordState>(
      builder: (context, state) {
        return state.maybeWhen(
            complete: (___, __, plankMessage, ____, _) => ScaleTransition(
                  scale: animation,
                  child: Material(
                    animationDuration: const Duration(seconds: 1),
                    borderRadius: BorderRadius.circular(12.0),
                    color: AppColors.accent.withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _Content(text: plankMessage),
                    ),
                  ),
                ),
            orElse: () => const SizedBox());
      },
    );
  }
}

class _Content extends StatelessWidget {
  final String text;
  const _Content({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        text.contains("You haven't planked today.")
            ? const FaIcon(
                FontAwesomeIcons.exclamationCircle,
                color: AppColors.accent,
              )
            : const FaIcon(
                FontAwesomeIcons.check,
                color: AppColors.accent,
              ),
        const SizedBox(width: 8.0),
        Flexible(
          child: Text(
            text,
            maxLines: 2,
            style: context.text.subtitle2!.withColor(AppColors.accent),
          ),
        ),
      ],
    );
  }
}
