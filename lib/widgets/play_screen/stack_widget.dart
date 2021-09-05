import 'package:flutter/material.dart';
import 'package:tcard/tcard.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  _StackWidgetState createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  TCardController _controller = TCardController();

  Stack getStack = Stack(
    children: [],
  );

  @override
  Widget build(BuildContext context) {
    return TCard(
      controller: _controller,
      cards: getStack.children,
      onForward: (index, info) {
        print("$index     $info");
      },
    );
  }
}
