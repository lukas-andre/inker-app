import 'dart:async';
import 'dart:ui' as ui show Image;

import 'package:flutter/material.dart'
    show ImageInfo, NetworkImage, ImageConfiguration, ImageStreamListener;
import 'package:google_maps_flutter/google_maps_flutter.dart'
    show BitmapDescriptor;
import 'package:inker_studio/data/api/location/dtos/findArtistByLocationResponse.dart'
    show Artist;
import 'package:inker_studio/utils/layout/widgets_to_marker.dart'
    show WidgetToMarker;

class MarkerHelper {
  static Future<ui.Image> imageFromNetwork(String path) async {
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

  static String imageLinkFromArtist(Artist artist) {
    final imageLink = artist.profileThumbnail == null
        ? 'https://d1riey1i0e5tx2.cloudfront.net/artist/default_profile.jpeg'
        : artist.profileThumbnail!;
    return imageLink;
  }

  static Future<BitmapDescriptor> getArtistMarkerIcon(
      Artist artist, bool isSelected) async {
    String imageLink = MarkerHelper.imageLinkFromArtist(artist);
    final image = await MarkerHelper.imageFromNetwork(imageLink);
    final marker = await WidgetToMarker.getArtistMarker(
        artistName: artist.username!,
        isOpen: true,
        isSelected: isSelected,
        profileImage: image);
    return marker;
  }
}
