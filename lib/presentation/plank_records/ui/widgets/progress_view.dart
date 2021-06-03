import 'package:flutter/material.dart';

import 'widgets.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12.0),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: HeaderSection(),
        ),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: InfoSection(),
        ),
        const Expanded(
          child: GraphSection(),
        ),
      ],
    );
  }
}
