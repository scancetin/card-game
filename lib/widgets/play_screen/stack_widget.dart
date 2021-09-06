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

  // TODO: when controller.back called, touching in animation state creates bug
  // TODO: wait for animation finish, or make screen untouchable for ms

  @override
  Widget build(BuildContext context) {
    return TCard(
      slideSpeed: 15,
      // delaySlideFor: 100,
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

        print(cardNotify.currentIconStats);
      },
      onBack: (index, info) {
        cardNotify.indexDecrement(index);
        print(cardNotify.currentIconStats);
      },
      onEnd: () {
        cardNotify.getController.back();
      },
    );
  }

  void getStatus() {}
}
