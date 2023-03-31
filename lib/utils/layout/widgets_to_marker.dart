import 'dart:ui' as ui;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:inker_studio/ui/customer/explore/views/map/markers/artist_marker.dart';

const size = ui.Size(400, 150);

class WidgetToMarker {
  static Future<BitmapDescriptor> getArtistMarker(
      {required ui.Image profileImage,
      required String artistName,
      required bool isOpen,
      required bool isSelected}) async {
    final pictureRecorder = ui.PictureRecorder();
    final canvas = ui.Canvas(pictureRecorder);

    final endMarkerPainter = ArtistMarkerPainter(
        artistProfileImage: profileImage,
        artistName: artistName,
        isOpen: isOpen,
        isSelected: isSelected);
    endMarkerPainter.paint(canvas, size);

    final picture = pictureRecorder.endRecording();
    final image =
        await picture.toImage(size.width.toInt(), size.height.toInt());
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);

    return BitmapDescriptor.fromBytes(byteData!.buffer.asUint8List());
  }
}
