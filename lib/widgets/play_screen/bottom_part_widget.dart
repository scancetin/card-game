import 'package:flutter/material.dart';
import 'package:your_choice_card_game/models/card_model.dart';

class BottomPartWidget extends StatefulWidget {
  const BottomPartWidget({Key? key}) : super(key: key);

  @override
  _BottomPartWidgetState createState() => _BottomPartWidgetState();
}

class _BottomPartWidgetState extends State<BottomPartWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: () {
            cardNotify.getController.back();
          },
        ),
      ),
    );
  }
}
