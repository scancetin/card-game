import 'package:flutter/material.dart';
import 'package:tcard/tcard.dart';
import 'package:your_choice_card_game/models/card_model.dart';
import 'package:your_choice_card_game/widgets/play_screen/stack_widget.dart';

class MiddlePartWidget extends StatefulWidget {
  const MiddlePartWidget({Key? key}) : super(key: key);

  @override
  _MiddlePartWidgetState createState() => _MiddlePartWidgetState();
}

class _MiddlePartWidgetState extends State<MiddlePartWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: cardNotify,
      builder: (context, CardModel cardModel, child) {
        return Column(
          children: [
            Expanded(flex: 3, child: buildText()),
            Expanded(flex: 10, child: StackWidget()),
            Expanded(flex: 1, child: buildName()),
          ],
        );
      },
    );
  }

  Container buildText() {
    return Container(
      color: Colors.yellow,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        cardNotify.getText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22),
      ),
    );
  }

  Container buildName() {
    return Container(
      color: Colors.purple,
      alignment: Alignment.center,
      child: Text(
        cardNotify.getName,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22),
      ),
    );
  }
}
