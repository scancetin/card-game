import 'package:flutter/material.dart';
import 'package:your_choice_card_game/models/card_model.dart';

class CardWidget extends StatefulWidget {
  final String image;
  const CardWidget({Key? key, required this.image}) : super(key: key);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width;
    double cardTextHeight = cardWidth * 0.15;

    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Stack(
        children: [
          Image.network(
            widget.image,
            width: cardWidth,
            height: cardWidth,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: cardTextHeight,
                    color: Colors.brown,
                    child: Center(child: Text(cardNotify.getRightText, textAlign: TextAlign.center)),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: cardTextHeight,
                    color: Colors.red,
                    child: Center(child: Text(cardNotify.getLeftText, textAlign: TextAlign.center)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
