import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:inker_studio/utils/layout/bottom_nav_bar_icons.dart';

class CustomerPageNavBarIcons extends Equatable {
  final List<PageNavBarIcon> icons;
  const CustomerPageNavBarIcons({required this.icons});

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
  const PageNavBarIcon({
    required this.icon,
    required this.selectedIcon,
    this.title,
    required this.index,
    this.key,
  });

  @override
  List<Object?> get props => [icon, title, index];

  @override
  bool get stringify => true;
}

CustomerPageNavBarIcons kCustomerPageNavBarIcons =
    const CustomerPageNavBarIcons(
  icons: [
    PageNavBarIcon(
      key: Key('exploreIcon'),
      icon: ImageIcon(exploreIcon),
      selectedIcon: ImageIcon(exploreSelectedIcon),
      title: 'Buscar',
      index: 1,
    ),
    PageNavBarIcon(
      key: Key('bookMarkIcon'),
      icon: ImageIcon(bookMarkIcon),
      selectedIcon: ImageIcon(bookMarkSelectedIcon),
      title: 'Cotizaciones',
      index: 2,
    ),
    PageNavBarIcon(
      key: Key('profileIcon'),
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
