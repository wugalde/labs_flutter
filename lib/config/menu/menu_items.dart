import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMeniItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subTitle: 'Varios botones',
    link: 'buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Tarjetas',
    subTitle: 'Varios botones',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'Counter',
    subTitle: 'Contador',
    link: '/counter',
    icon: Icons.countertops_outlined,
  ),
];
