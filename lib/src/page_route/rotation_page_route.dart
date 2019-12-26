import 'package:flutter/material.dart';

class RotationPageRoute extends PageRouteBuilder {
  final Widget page;

  RotationPageRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              RotationTransition(
            child: child,
            turns: Tween<double>(
              begin: .75,
              end: 1.0,
            ).animate(
              CurvedAnimation(parent: animation, curve: Curves.linear),
            ),
          ),
        );
}
