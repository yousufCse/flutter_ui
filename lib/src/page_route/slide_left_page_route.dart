import 'package:flutter/material.dart';

class SlideLeftPageRoute extends PageRouteBuilder {
  final Widget page;

  SlideLeftPageRoute({this.page})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              page,
          transitionsBuilder: (BuildContext context,
                  Animation<double> animatoin,
                  Animation<double> secondaryAnimation,
                  Widget child) =>
              SlideTransition(
            position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero)
                .animate(animatoin),
            child: child,
          ),
        );
}
