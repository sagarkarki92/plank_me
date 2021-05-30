import 'package:flutter/material.dart';

import '../../../ui_utils/ui_styles.dart';

class GraphSection extends StatelessWidget {
  const GraphSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              'Results',
              
            ),
          ),
          _Graph()
        ],
      ),
    );
  }
}

class _Graph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
