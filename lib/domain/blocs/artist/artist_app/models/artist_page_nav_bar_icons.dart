import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:inker_studio/utils/layout/bottom_nav_bar_icons.dart';

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
  const PageNavBarIcon(
      {required this.icon,
      required this.selectedIcon,
      this.title,
      required this.index});

  @override
  List<Object?> get props => [icon, title, index];

  @override
  bool get stringify => true;
}

ArtistPageNavBarIcons kArtistPageNavBarIcons = const ArtistPageNavBarIcons(
  icons: [
    PageNavBarIcon(
      icon: ImageIcon(feedIcon),
      selectedIcon: ImageIcon(feedSelectedIcon),
      title: 'Agenda',
      index: 0,
    ),
    PageNavBarIcon(
      icon: ImageIcon(bookMarkIcon),
      selectedIcon: ImageIcon(bookMarkSelectedIcon),
      title: 'Solicituded',
      index: 2,
    ),
    PageNavBarIcon(
      icon: Icon(
        Icons.account_circle_outlined,
        size: 25,
        color: Colors.white,
      ),
      selectedIcon: Icon(
        Icons.account_circle_outlined,
        size: 25,
        color: Colors.white,
      ),
      title: 'Perfil',
      index: 3,
    ),
  ],
);
