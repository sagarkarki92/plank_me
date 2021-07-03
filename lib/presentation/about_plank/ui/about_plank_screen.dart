import 'package:flutter/material.dart';
import 'package:plank_me/presentation/ui_utils/ui_styles.dart';

class AboutPlankScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            labelColor: AppColors.lightAccent,
            unselectedLabelColor: AppColors.darkFaded,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: AppColors.primaryDark,
            ),
            tabs: const [
              Tab(text: '10 facts on Plank'),
              Tab(text: 'How to plank Properly')
            ],
          ),
          body: const TabBarView(
            physics: BouncingScrollPhysics(),
            children: [
              Text('10 facts is plank is theee best'),
              Text('You already know how to plank nah?')
            ],
          ),
        ),
      ),
    );
  }
}
