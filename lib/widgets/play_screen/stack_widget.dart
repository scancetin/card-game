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
    return Center(
      child: TCard(
        slideSpeed: 15,
        controller: cardNotify.getController,
        cards: getStack.children,
        onForward: (index, info) {
          if (index < cardNotify.getAllImages.length) {
            cardNotify.indexIncrement(index);

            if (info.direction == SwipDirection.Right) {
              cardNotify.rigthSwipe();
              print("RIGTH");
            } else if (info.direction == SwipDirection.Left) {
              cardNotify.leftSwipe();
              print("LEFT");
            }
          }
        },
        //! back button have issues => animation problems, cant turn stats back
        //! back buttun only working for last card
        onBack: (index, info) {
          cardNotify.indexDecrement(index, info);
        },
        onEnd: () {
          cardNotify.getController.back();
        },
      ),
    );
  }
}
