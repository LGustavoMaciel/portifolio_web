// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    required this.mediumScreen,
    required this.smallScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 768;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 768;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 768 && MediaQuery.of(context).size.width < 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 768) {
          return largeScreen;
        } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 425) {
          return mediumScreen;
        } else {
          return smallScreen;
        }
      },
    );
  }
}
