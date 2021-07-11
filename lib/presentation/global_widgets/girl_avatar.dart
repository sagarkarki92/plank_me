import 'package:flutter/material.dart';

class GirlAvatar extends StatelessWidget {
  final bool isPlanking;
  const GirlAvatar({
    Key? key,
    this.isPlanking = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isPlanking
        ? Image.asset('assets/images/girl_planking.png')
        : Image.asset('assets/images/girl_stand.png');
  }
}
