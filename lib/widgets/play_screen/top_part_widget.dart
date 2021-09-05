import 'package:flutter/material.dart';

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
        buildGameElements(Icons.arrow_upward),
        buildGameElements(Icons.arrow_downward),
        buildGameElements(Icons.wb_sunny),
        buildGameElements(Icons.wb_twilight),
      ],
    );
  }

  buildGameElements(IconData icon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 60,
        ),
      ],
    );
  }
}
