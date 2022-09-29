import 'dart:ui' as ui;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inker_studio/ui/customer/explore/views/map/markers/artist_marker.dart';
import 'package:inker_studio/ui/customer/explore/views/map/markers/end_marker.dart';
import 'package:inker_studio/ui/customer/explore/views/map/markers/start_marker.dart';

const size = ui.Size(400, 150);

Future<BitmapDescriptor> getStartCustomMarker(
    String minutes, String destination) async {
  final pictureRecorder = ui.PictureRecorder();
  final canvas = ui.Canvas(pictureRecorder);

  final StartMarkerPainter startMarkerPainter = StartMarkerPainter(
    minutes: minutes,
    description: destination,
  );
  startMarkerPainter.paint(canvas, size);

  final picture = pictureRecorder.endRecording();
  final image = await picture.toImage(size.width.toInt(), size.height.toInt());
  final byteData = await image.toByteData(format: ui.ImageByteFormat.png);

  return BitmapDescriptor.fromBytes(byteData!.buffer.asUint8List());
}

Future<BitmapDescriptor> getEndCustomMarker(
    String kilometers, String destination) async {
  final pictureRecorder = ui.PictureRecorder();
  final canvas = ui.Canvas(pictureRecorder);

  final endMarkerPainter = EndMarkerPainter(
    kilometers: kilometers,
    description: destination,
  );
  endMarkerPainter.paint(canvas, size);

  final picture = pictureRecorder.endRecording();
  final image = await picture.toImage(size.width.toInt(), size.height.toInt());
  final byteData = await image.toByteData(format: ui.ImageByteFormat.png);

  return BitmapDescriptor.fromBytes(byteData!.buffer.asUint8List());
}

Future<BitmapDescriptor> getArtistMarker(
    ui.Image profileImage, String artistName, bool isOpen) async {
  final pictureRecorder = ui.PictureRecorder();
  final canvas = ui.Canvas(pictureRecorder);

  final endMarkerPainter = ArtistMarkerPainter(
      artistProfileImage: profileImage, artistName: artistName, isOpen: isOpen);
  endMarkerPainter.paint(canvas, size);

  final picture = pictureRecorder.endRecording();
  final image = await picture.toImage(size.width.toInt(), size.height.toInt());
  final byteData = await image.toByteData(format: ui.ImageByteFormat.png);

  return BitmapDescriptor.fromBytes(byteData!.buffer.asUint8List());
}
