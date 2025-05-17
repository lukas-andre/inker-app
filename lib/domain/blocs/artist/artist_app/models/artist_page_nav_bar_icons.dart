import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/utils/layout/bottom_nav_bar_icons.dart';
import 'package:inker_studio/utils/styles/app_styles.dart'; // Import app styles for colors if needed

class ArtistPageNavBarIcons extends Equatable {
  final List<PageNavBarIcon> icons;
  const ArtistPageNavBarIcons({required this.icons});

  @override
  List<Object?> get props => [icons];

  @override
  bool get stringify => true;
}

class PageNavBarIcon extends Equatable {
  final dynamic icon;
  final dynamic selectedIcon;
  final String? title;
  final int index;
  final Key? key;
  const PageNavBarIcon(
      {required this.icon,
      required this.selectedIcon,
      this.title,
      required this.index,
      this.key});

  @override
  List<Object?> get props => [icon, title, index];

  @override
  bool get stringify => true;
}
