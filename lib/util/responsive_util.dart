import 'package:flutter/material.dart';

class ResponsiveUtils {
  static bool isMobile(BuildContext context) {
    return MediaQuery.sizeOf(context).width < 600;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= 600 &&
        MediaQuery.of(context).size.width < 1024;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }
}
