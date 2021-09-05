import 'package:flutter/material.dart';
import 'package:your_choice_card_game/screens/play_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: PlayScreen(),
    );
  }
}
