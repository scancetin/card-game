import 'package:flutter/material.dart';
import 'package:tcard/tcard.dart';
import 'package:your_choice_card_game/models/card_model.dart';
import 'package:your_choice_card_game/widgets/play_screen/card_widget.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  _StackWidgetState createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  Stack getStack = Stack(
    children: List.generate(
      cardNotify.getAllImages.length,
      (int index) {
        return CardWidget(image: cardNotify.getAllImages[index]);
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return TCard(
      controller: cardNotify.getController,
      cards: getStack.children,
      onForward: (index, info) {
        cardNotify.indexIncrement();

        if (info.direction == SwipDirection.Right) {
          print("RIGTH");
        } else if (info.direction == SwipDirection.Left) {
          print("LEFT");
        }
      },
      onBack: (index, info) {
        cardNotify.indexDecrement();
      },
    );
  }
}
