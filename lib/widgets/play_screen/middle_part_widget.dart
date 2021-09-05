import 'package:flutter/material.dart';
import 'package:your_choice_card_game/widgets/play_screen/stack_widget.dart';

class MiddlePartWidget extends StatefulWidget {
  const MiddlePartWidget({Key? key}) : super(key: key);

  @override
  _MiddlePartWidgetState createState() => _MiddlePartWidgetState();
}

class _MiddlePartWidgetState extends State<MiddlePartWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 3, child: buildText()),
        Expanded(flex: 10, child: StackWidget()),
        Expanded(flex: 1, child: buildName()),
      ],
    );
  }

  Container buildText() {
    return Container(
      color: Colors.yellow,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed lectus ullamcorper.",
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
        "Pippin",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22),
      ),
    );
  }
}
