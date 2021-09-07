import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:your_choice_card_game/models/card_model.dart';

class TopPartWidget extends StatefulWidget {
  const TopPartWidget({Key? key}) : super(key: key);

  @override
  _TopPartWidgetState createState() => _TopPartWidgetState();
}

class _TopPartWidgetState extends State<TopPartWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Spacer(flex: 1),
        buildGameElements(Icons.arrow_upward, cardNotify.currentStats[0], cardNotify.getCardStatsRL(0)),
        Spacer(flex: 1),
        buildGameElements(Icons.arrow_downward, cardNotify.currentStats[1], cardNotify.getCardStatsRL(1)),
        Spacer(flex: 1),
        buildGameElements(Icons.wb_sunny, cardNotify.currentStats[2], cardNotify.getCardStatsRL(2)),
        Spacer(flex: 1),
        buildGameElements(Icons.wb_twilight, cardNotify.currentStats[3], cardNotify.getCardStatsRL(3)),
        Spacer(flex: 1),
      ],
    );
  }

  buildGameElements(IconData icon, int currentStep, List<int> cardStatsRL) {
    double iconWidth = MediaQuery.of(context).size.width * 0.2;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildDynamicDots(cardStatsRL),
        CircularStepProgressIndicator(
          totalSteps: 100,
          currentStep: currentStep,
          stepSize: 8,
          selectedStepSize: 10,
          selectedColor: Colors.brown,
          unselectedColor: Colors.grey[400],
          padding: 0,
          width: iconWidth,
          height: iconWidth,
          roundedCap: (_, __) => true,
          child: Icon(
            icon,
            size: iconWidth * 0.45,
            color: Colors.brown[800],
          ),
        ),
      ],
    );
  }

  CircleAvatar buildDynamicDots(List<int> currentStatsRL) {
    int _rigth = currentStatsRL[0].abs();
    int _left = currentStatsRL[1].abs();
    double _average = (_rigth + _left) / 2;
    double _radius = 0;
    Color _color = Colors.transparent;

    if (_rigth != 0 && _left != 0) {
      _radius = _average > 10 ? 10 : _average;
      _color = Colors.black;
    } else if (_rigth != 0) {
      _radius = _rigth > 10 ? 10 : _rigth.toDouble();
      _color = Colors.red;
    } else if (_left != 0) {
      _radius = _left > 6 ? 10 : _left.toDouble();
      _color = Colors.brown;
    }

    return CircleAvatar(
      radius: _radius < 5 ? 5 : _radius,
      backgroundColor: _color,
    );
  }
}
