import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/setting/cubit/setting_cubit.dart';

class UserEdit extends StatefulWidget {
  final String username;
  const UserEdit({Key? key, required this.username}) : super(key: key);

  @override
  _UserEditState createState() => _UserEditState();
}

class _UserEditState extends State<UserEdit> {
  late TextEditingController textController;
  @override
  void initState() {
    textController = TextEditingController(text: widget.username);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 12.0),
          child: TextField(
            controller: textController,
            autofocus: true,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () => context.read<SettingCubit>().loadSettingData(),
                child: const Text('Cancel'),
              ),
              const SizedBox(width: 12.0),
              ElevatedButton(
                onPressed: () => context
                    .read<SettingCubit>()
                    .renameUserName(textController.text),
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
