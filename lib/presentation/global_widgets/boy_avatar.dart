import 'package:flutter/material.dart';

class BoyAvatar extends StatelessWidget {
  late final String pathUrl;
  BoyAvatar({
    Key? key,
  }) : super(key: key) {
    pathUrl = 'assets/images/boy_stand.png';
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(pathUrl);
  }

  BoyAvatar.muscleUp({Key? key}) : super(key: key) {
    pathUrl = 'assets/images/boy_muscle_up.png';
  }

  BoyAvatar.planking({Key? key}) : super(key: key) {
    pathUrl = 'assets/images/boy_planking.png';
  }
}
