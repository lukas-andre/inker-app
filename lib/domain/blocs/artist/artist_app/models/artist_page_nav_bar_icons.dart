import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

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
