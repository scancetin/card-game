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
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     ShaderMask(
    //       shaderCallback: (bounds) => LinearGradient(
    //         begin: Alignment.topCenter,
    //         end: Alignment.bottomCenter,
    //         colors: [Colors.blue, Colors.red],
    //         tileMode: TileMode.mirror,
    //       ).createShader(bounds),
    //       child: Icon(
    //         Icons.book,
    //         size: 50,
    //         color: Colors.white,
    //       ),
    //     )
    //   ],
    // );
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: SizedBox(
          height: 80,
          width: 80,
          child: Stack(
            children: [
              Container(
                color: Colors.grey,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 60,
                  color: Colors.red,
                ),
              ),
              Center(
                child: Icon(
                  icon,
                  size: 60,
                  // color: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
