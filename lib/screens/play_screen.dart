import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';
import 'package:your_choice_card_game/models/card_model.dart';
import 'package:your_choice_card_game/widgets/play_screen/bottom_part_widget.dart';
import 'package:your_choice_card_game/widgets/play_screen/middle_part_widget.dart';
import 'package:your_choice_card_game/widgets/play_screen/top_part_widget.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return PixelPerfect(
      assetPath: 'assets/images/pixel_perfect/lapse_sample.jpg',
      scale: 1,
      initBottom: 20,
      offset: Offset.zero,
      initOpacity: 0,
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: cardNotify,
          builder: (context, CardModel cardModel, child) {
            return Column(
              children: [
                Expanded(
                  flex: 4,
                  child: TopPartWidget(),
                ),
                Expanded(
                  flex: 16,
                  child: MiddlePartWidget(),
                ),
                Expanded(
                  flex: 3,
                  child: BottomPartWidget(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
