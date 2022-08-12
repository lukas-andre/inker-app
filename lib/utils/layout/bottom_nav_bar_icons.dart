import 'package:flutter/material.dart';

final bookMarkSelectedIcon = Image.asset(
  'assets/icons/bottom_nav/bookmark-selected.png',
  width: 16.5,
);
final bookMarkIcon = Image.asset(
  'assets/icons/bottom_nav/bookmark.png',
  width: 16.5,
);
final clockSelectedIcon =
    getImage('assets/icons/bottom_nav/clock-selected.png');
final clockIcon = getImage('assets/icons/bottom_nav/clock.png');
final feedSelectedIcon = getImage('assets/icons/bottom_nav/feed-selected.png');
final feedIcon = getImage('assets/icons/bottom_nav/feed.png');
final exploreSelectedIcon =
    getImage('assets/icons/bottom_nav/explore-selected.png');
final exploreIcon = getImage('assets/icons/bottom_nav/explore.png');

Image getImage(String path) {
  return Image.asset(
    path,
    width: 21,
  );
}
