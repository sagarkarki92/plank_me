import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../ui_utils/ui_styles.dart';
import '../../cubits/username_cubit/usernamefield_cubit.dart';

class UsernameField extends StatefulWidget {
  @override
  _UsernameFieldState createState() => _UsernameFieldState();
}

class _UsernameFieldState extends State<UsernameField> {
  Timer? timer;
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();

  }

  @override
  void dispose() {
    timer?.cancel();
    focusNode.dispose();
    super.dispose();
  }

  void _validateUser(String username) {
    if (timer != null) {
      timer?.cancel();
    }
    timer = Timer(const Duration(seconds: 2), () {
      context.read<UsernamefieldCubit>().validateUser(username);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsernamefieldCubit, UsernamefieldState>(
        builder: (context, state) => state.when(
              initial: () => _buildField(),
              userChecking: () => _buildField(
                  trailing: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const CircularProgressIndicator(
                  strokeWidth: 1.0,
                ),
              )),
              invalid: (String errorMessage) => _buildField(
                trailing: const Icon(
                  Icons.close,
                  color: Colors.red,
                ),
                color: Colors.red,
                label: errorMessage,
              ),
              userExist: (String label) => _buildField(
                  trailing: const Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                  color: Colors.red,
                  label: label),
              userAvailable: (String label) => _buildField(
                  trailing: const Icon(
                    Icons.done,
                    color: Colors.green,
                  ),
                  color: Colors.green,
                  label: label),
            ));
  }

  Widget _buildField(
      {Color color = AppColors.primary,
      Widget trailing = const SizedBox.shrink(),
      String label = ''}) {
    return TextField(
      focusNode: focusNode,
      decoration: InputDecoration(
          hintText: "User name",
          suffixIcon: trailing,
          errorBorder: OutlineInputBorder(borderSide: BorderSide(color: color)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: color)),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: color,
            ),
          ),
          counterText: label,
          counterStyle: TextStyle(color: color)),
      minLines: 1,
      onChanged: (value) => _validateUser(value),
    );
  }
}
