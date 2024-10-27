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

CustomerPageNavBarIcons kCustomerPageNavBarIcons =
    const CustomerPageNavBarIcons(
  icons: [
    PageNavBarIcon(
      icon: ImageIcon(exploreIcon),
      selectedIcon: ImageIcon(exploreSelectedIcon),
      title: 'Buscar',
      index: 1,
    ),
    PageNavBarIcon(
      icon: ImageIcon(bookMarkIcon),
      selectedIcon: ImageIcon(bookMarkSelectedIcon),
      title: 'Cotizaciones',
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
