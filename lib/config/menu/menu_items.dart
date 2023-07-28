import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subtitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subtitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicators',
    subtitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars y Dialogos',
    subtitle: 'Indicadores en pantalla',
    link: '/snackbar',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated Container',
    subtitle: 'Statefull widget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),
  MenuItem(
    title: 'UI Controls + Tiles',
    subtitle: 'Una serie de controles de Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
  MenuItem(
    title: 'Introducción a la aplicación',
    subtitle: 'Pequeño tutorial introductorio',
    link: '/tutorial',
    icon: Icons.accessible_rounded,
  ),
  MenuItem(
    title: 'Infinite Scroll y Pull Refresh',
    subtitle: 'Listas infinitas y Pull Refresh',
    link: '/infinite',
    icon: Icons.refresh_outlined,
  ),
];
