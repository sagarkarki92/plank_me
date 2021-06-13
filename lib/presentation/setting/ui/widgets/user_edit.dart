import 'package:flutter/material.dart';
import './widgets.dart';

class UserEdit extends StatelessWidget {
  const UserEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 12.0),
          child: TextField(),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              const SizedBox(width: 12.0),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
