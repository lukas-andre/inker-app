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

ArtistPageNavBarIcons kArtistPageNavBarIcons = const ArtistPageNavBarIcons(
  icons: [
    PageNavBarIcon(
      key: K.agendaTab,
      icon: ImageIcon(feedIcon),
      selectedIcon: ImageIcon(feedSelectedIcon),
      title: 'Agenda',
      index: 0,
    ),
    PageNavBarIcon(
      key: K.quotationsTab,
      icon: ImageIcon(bookMarkIcon),
      selectedIcon: ImageIcon(bookMarkSelectedIcon),
      title: 'Mis Solicitudes',
      index: 1,
    ),
    PageNavBarIcon(
      key: Key('trabajos_tab'),
      icon: Icon(Icons.work_outline, color: Colors.white60),
      selectedIcon: Icon(Icons.work, color: Colors.white),
      title: 'Trabajos',
      index: 2,
    ),
    PageNavBarIcon(
      key: K.profileTab,
      icon: Icon(
        Icons.account_circle_outlined,
        size: 25,
        color: Colors.white60,
      ),
      selectedIcon: Icon(
        Icons.account_circle,
        size: 25,
        color: Colors.white,
      ),
      title: 'Perfil',
      index: 3,
    ),
  ],
);
