import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/on_boarding/cubits/setupuser_cubit/setupuser_cubit.dart';

class GenderSelection extends StatelessWidget {
  @override
  Widget build(BuildContext contexta) {
    return BlocBuilder<SetupuserCubit, SetupuserState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GenderItem(
              label: 'Male',
              isSelected:
                  context.read<SetupuserCubit>().userType == UserType.male,
              onChanged: () =>
                  context.read<SetupuserCubit>().setUserGender(UserType.male),
            ),
            GenderItem(
              label: 'Female',
              isSelected:
                  context.read<SetupuserCubit>().userType == UserType.female,
              onChanged: () =>
                  context.read<SetupuserCubit>().setUserGender(UserType.female),
            ),
          ],
        );
      },
    );
  }
}

class GenderItem extends StatelessWidget {
  final String? label;
  final bool isSelected;
  final VoidCallback? onChanged;
  const GenderItem({
    Key? key,
    this.onChanged,
    this.label,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged,
      child: Text(
        label!,
        style: TextStyle(
          color: isSelected ? Colors.green : Colors.grey,
        ),
      ),
    );
  }
}
