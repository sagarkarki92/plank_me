import 'package:flutter/material.dart';
import 'package:plank_me/presentation/ui_utils/ui_styles.dart';

class CardItem extends StatelessWidget {
  final String label;
  final Widget textValue;

  const CardItem({
    Key? key,
    required this.label,
    required this.textValue,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      height: MediaQuery.of(context).size.height * 0.18,
      decoration: BoxDecoration(
        color: AppColors.lightAccent,
        boxShadow: [
          BoxShadow(
            color: AppColors.darkAccent.withOpacity(0.2),
            blurRadius: 18.0,
            offset: const Offset(2.0, 8.0),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: context.text.bodyText1!.thin,
          ),
          textValue,
        ],
      ),
    );
  }
}
