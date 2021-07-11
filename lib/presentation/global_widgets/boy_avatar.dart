import 'package:flutter/material.dart';

class BoyAvatar extends StatelessWidget {
  final bool isPlanking;
  const BoyAvatar({
    Key? key,
    this.isPlanking = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isPlanking
        ? Image.asset('assets/images/boy_planking.png')
        : Image.asset('assets/images/boy_stand.png');
  }
}
