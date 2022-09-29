import 'package:flutter/material.dart';
import 'package:inker_studio/ui/customer/explore/views/map/markers/artist_marker.dart';

class TestMarkerScreen2 extends StatelessWidget {
  const TestMarkerScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      height: 170,
      width: 400,
      color: Colors.red,
      child: const CustomPaint(
          // painter: StartMarkerPainter(
          //   minutes: '55',
          //   description: 'my description',
          // ),
          //     painter: ArtistMarkerPainter(
          //   minutes: '55',
          //   description:
          //       'my descriptionnnn my descriptionnnn my descriptionnnn my descriptionnnn',
          //   // imagePath:
          //   //     'https://d1riey1i0e5tx2.cloudfront.net/artist/1/profile_picture.png',
          // )
          ),
    )));
  }
}
