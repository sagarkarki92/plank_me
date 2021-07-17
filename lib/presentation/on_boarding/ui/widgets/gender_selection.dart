import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../global_widgets/boy_avatar.dart';
import '../../../global_widgets/girl_avatar.dart';
import '../../cubits/setupuser_cubit/setupuser_cubit.dart';

class GenderSelection extends StatelessWidget {
  @override
  Widget build(BuildContext contexta) {
    return BlocBuilder<SetupuserCubit, SetupuserState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GenderItem(
              avatar: BoyAvatar(),
              isSelected:
                  context.read<SetupuserCubit>().userType == UserType.male,
              onChanged: () =>
                  context.read<SetupuserCubit>().setUserGender(UserType.male),
            ),
            GenderItem(
              avatar: const GirlAvatar(),
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
  final Widget avatar;
  final bool isSelected;
  final VoidCallback? onChanged;
  const GenderItem({
    Key? key,
    required this.avatar,
    this.onChanged,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isSelected)
          const Icon(
            Icons.check_circle_rounded,
            color: Colors.green,
          ),
        const SizedBox(height: 8.0),
        GestureDetector(
          onTap: onChanged,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: isSelected
                ? BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  )
                : const BoxDecoration(),
            height: isSelected ? 250 : 150,
            child: avatar,
          ),
        ),
      ],
    );
  }
}
