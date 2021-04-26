import 'package:flutter/material.dart';
import 'package:plank_me/presentation/on_boarding/ui/on_boarding_screen.dart';

class PlankMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoardingScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:Text('Plank Me')
      ),
    );

  }
}
