import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './widgets.dart';

class UserDisplay extends StatelessWidget {
  const UserDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Saagar'),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.edit,
            size: 16.0,
          ),
        ),
      ],
    );
  }
}
