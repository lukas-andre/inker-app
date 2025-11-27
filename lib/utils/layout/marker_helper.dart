import 'dart:async';
import 'dart:ui' as ui show Image;

import 'package:flutter/material.dart'
    show ImageInfo, NetworkImage, ImageConfiguration, ImageStreamListener;
import 'package:google_maps_flutter/google_maps_flutter.dart'
    show BitmapDescriptor;
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/utils/constants.dart' show defaultProfileImageLink;
import 'package:inker_studio/utils/layout/widgets_to_marker.dart'
    show WidgetToMarker;

class MarkerHelper {
  static Future<ui.Image> getImageFromNetwork(String path) async {
    var completer = Completer<ImageInfo>();
    var img = NetworkImage(path);
    img
        .resolve(const ImageConfiguration())
        .addListener(ImageStreamListener((info, _) {
      completer.complete(info);
    }));
    ImageInfo imageInfo = await completer.future;
    return imageInfo.image;
  }

  static String getArtistProfileLink(Artist artist) {
    final imageLink = artist.profileThumbnail == null
        ? defaultProfileImageLink
        : artist.profileThumbnail!;
    return imageLink;
  }

  static Future<BitmapDescriptor> getArtistMarkerIcon(
      Artist artist, bool isSelected) async {
    final imageLink = MarkerHelper.getArtistProfileLink(artist);
    final image = await MarkerHelper.getImageFromNetwork(imageLink);
    final marker = await WidgetToMarker.getArtistMarker(
        artistName: artist.username!,
        isOpen: true,
        isSelected: isSelected,
        profileImage: image);
    return marker;
  }
}
