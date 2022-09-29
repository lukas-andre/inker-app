import 'package:flutter/material.dart';
import 'package:inker_studio/ui/customer/explore/views/map/markers/end_marker.dart';

class TestMarkerScreen extends StatelessWidget {
  const TestMarkerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      height: 165,
      width: 350,
      color: Colors.red,
      child: CustomPaint(
          // painter: StartMarkerPainter(
          //   minutes: '55',
          //   description: 'my description',
          // ),
          painter: EndMarkerPainter(
        kilometers: '55',
        description:
            'my descriptionnnn my descriptionnnn my descriptionnnn my descriptionnnn',
      )),
    )));
  }
}
