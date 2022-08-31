import 'package:flutter/material.dart';
import 'package:potobase_web_site/utils/navigation_history_observer.dart';
import 'package:potobase_web_site/utils/responsive.dart';
import 'package:potobase_web_site/utils/routes.dart';

class Utils {
  static navigate(String route, BuildContext context) {
    final NavigationHistoryObserver nav = NavigationHistoryObserver();
    if (nav.top?.settings.name != null) {
      if (Responsive.isMobile(context)) {
        Navigator.pop(context);
      }
      if (nav.top!.settings.name == route) {
        return;
      } else {
        if (nav.top!.settings.name == Routes.home) {
          if (Routes.home == route) {
            return;
          }
          Navigator.pushNamed(context, route);
        } else {
          if (Routes.home == route) {
            Navigator.pop(context);
            return;
          }
          Navigator.pushReplacementNamed(context, route);
        }
      }
    }
  }
}
